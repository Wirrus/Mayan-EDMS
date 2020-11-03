import fcntl
from multiprocessing import Process
from pathlib import Path
import shutil

import mock

from django.core import mail
from django.utils.encoding import force_bytes, force_text

from django_celery_beat.models import PeriodicTask

from mayan.apps.common.serialization import yaml_dump
from mayan.apps.documents.models import Document
from mayan.apps.documents.tests.base import GenericDocumentTestCase
from mayan.apps.documents.tests.literals import (
    TEST_COMPRESSED_DOCUMENT_PATH, TEST_NON_ASCII_DOCUMENT_FILENAME,
    TEST_NON_ASCII_DOCUMENT_PATH, TEST_NON_ASCII_COMPRESSED_DOCUMENT_PATH,
    TEST_SMALL_DOCUMENT_FILENAME, TEST_SMALL_DOCUMENT_PATH
)
from mayan.apps.metadata.models import MetadataType

from ..literals import SOURCE_UNCOMPRESS_CHOICE_ALWAYS
from ..models.email_sources import EmailBaseModel, IMAPEmail, POP3Email
from ..models.scanner_sources import SaneScanner

from .literals import (
    TEST_EMAIL_ATTACHMENT_AND_INLINE, TEST_EMAIL_BASE64_FILENAME,
    TEST_EMAIL_BASE64_FILENAME_FROM, TEST_EMAIL_BASE64_FILENAME_SUBJECT,
    TEST_EMAIL_INLINE_IMAGE, TEST_EMAIL_NO_CONTENT_TYPE,
    TEST_EMAIL_NO_CONTENT_TYPE_STRING, TEST_EMAIL_ZERO_LENGTH_ATTACHMENT,
    TEST_WATCHFOLDER_SUBFOLDER
)
from .mixins import WebFormSourceTestMixin, WatchFolderTestMixin
from .mocks import MockIMAPServer, MockPOP3Mailbox

'''
class EmailBaseTestCase(GenericDocumentTestCase):
    auto_upload_test_document = False

    def _create_email_source(self):
        self.source = EmailBaseModel(
            document_type=self.test_document_type,
            host='', username='', password='', store_body=True
        )

    def test_decode_email_base64_encoded_filename(self):
        """
        Test decoding of base64 encoded e-mail attachment filename.
        """
        self._create_email_source()
        EmailBaseModel.process_message(
            source=self.source, message_text=TEST_EMAIL_BASE64_FILENAME
        )

        self.assertEqual(
            Document.objects.first().label, 'Ampelm\xe4nnchen.txt'
        )

    def test_decode_email_no_content_type(self):
        self._create_email_source()
        EmailBaseModel.process_message(
            source=self.source, message_text=TEST_EMAIL_NO_CONTENT_TYPE
        )
        self.assertTrue(
            TEST_EMAIL_NO_CONTENT_TYPE_STRING in Document.objects.first().file_latest.open().read()
        )

    def test_decode_email_zero_length_attachment(self):
        self._create_email_source()
        self.source.store_body = False
        self.source.save()

        EmailBaseModel.process_message(
            source=self.source, message_text=TEST_EMAIL_ZERO_LENGTH_ATTACHMENT
        )

        self.assertEqual(Document.objects.count(), 0)

    def test_decode_email_with_inline_image(self):
        # Silence expected errors in other apps
        self._silence_logger(name='mayan.apps.converter.backends')

        self._create_email_source()
        EmailBaseModel.process_message(
            source=self.source, message_text=TEST_EMAIL_INLINE_IMAGE
        )
        self.assertTrue(Document.objects.count(), 2)
        self.assertQuerysetEqual(
            ordered=False, qs=Document.objects.all(), values=(
                '<Document: test-01.png>', '<Document: email_body.html>'
            ),
        )

    def test_decode_email_with_attachment_and_inline_image(self):
        # Silence expected errors in other apps
        self._silence_logger(name='mayan.apps.converter.backends')

        self._create_email_source()
        EmailBaseModel.process_message(
            source=self.source, message_text=TEST_EMAIL_ATTACHMENT_AND_INLINE
        )
        self.assertTrue(Document.objects.count(), 2)
        self.assertQuerysetEqual(
            ordered=False, qs=Document.objects.all(), values=(
                '<Document: test-01.png>', '<Document: email_body.html>',
            ),
        )

    def test_decode_email_and_store_from_and_subject_as_metadata(self):
        metadata_from = MetadataType.objects.create(name='from')
        metadata_subject = MetadataType.objects.create(name='subject')
        self.test_document_type.metadata.create(metadata_type=metadata_from)
        self.test_document_type.metadata.create(metadata_type=metadata_subject)

        self._create_email_source()
        self.source.from_metadata_type = metadata_from
        self.source.subject_metadata_type = metadata_subject
        self.source.save()

        EmailBaseModel.process_message(
            source=self.source, message_text=TEST_EMAIL_BASE64_FILENAME
        )

        document = Document.objects.first()

        self.assertEqual(
            document.label, 'Ampelm\xe4nnchen.txt'
        )
        self.assertEqual(
            document.metadata.get(metadata_type=metadata_from).value,
            TEST_EMAIL_BASE64_FILENAME_FROM
        )
        self.assertEqual(
            document.metadata.get(metadata_type=metadata_subject).value,
            TEST_EMAIL_BASE64_FILENAME_SUBJECT
        )

    def test_document_upload_no_body(self):
        # Silence expected errors in other apps
        self._silence_logger(name='mayan.apps.converter.backends')

        self._create_email_source()
        self.source.store_body = False
        self.source.save()

        EmailBaseModel.process_message(
            source=self.source, message_text=TEST_EMAIL_ATTACHMENT_AND_INLINE
        )

        # Only two attachments, no body document
        self.assertEqual(1, Document.objects.count())

    def test_document_upload_with_body(self):
        # Silence expected errors in other apps
        self._silence_logger(name='mayan.apps.converter.backends')

        self._create_email_source()

        EmailBaseModel.process_message(
            source=self.source, message_text=TEST_EMAIL_ATTACHMENT_AND_INLINE
        )

        # Only two attachments and a body document
        self.assertEqual(2, Document.objects.count())

    def test_metadata_yaml_attachment(self):
        TEST_METADATA_VALUE_1 = 'test value 1'
        TEST_METADATA_VALUE_2 = 'test value 2'

        test_metadata_type_1 = MetadataType.objects.create(
            name='test_metadata_type_1'
        )
        test_metadata_type_2 = MetadataType.objects.create(
            name='test_metadata_type_2'
        )
        self.test_document_type.metadata.create(
            metadata_type=test_metadata_type_1
        )
        self.test_document_type.metadata.create(
            metadata_type=test_metadata_type_2
        )

        test_metadata_yaml = yaml_dump(
            data={
                test_metadata_type_1.name: TEST_METADATA_VALUE_1,
                test_metadata_type_2.name: TEST_METADATA_VALUE_2,
            }
        )

        # Create email with a test attachment first, then the metadata.yaml
        # attachment
        with mail.get_connection(
            backend='django.core.mail.backends.locmem.EmailBackend'
        ) as connection:
            email_message = mail.EmailMultiAlternatives(
                body='test email body', connection=connection,
                subject='test email subject', to=['test@example.com'],
            )

            email_message.attach(
                filename='test_attachment',
                content='test_content',
            )

            email_message.attach(
                filename='metadata.yaml',
                content=test_metadata_yaml,
            )

            email_message.send()

        self._create_email_source()
        self.source.store_body = True
        self.source.save()

        EmailBaseModel.process_message(
            source=self.source, message_text=mail.outbox[0].message()
        )

        self.assertEqual(Document.objects.count(), 2)

        for document in Document.objects.all():
            self.assertEqual(
                document.metadata.get(metadata_type=test_metadata_type_1).value,
                TEST_METADATA_VALUE_1
            )
            self.assertEqual(
                document.metadata.get(metadata_type=test_metadata_type_2).value,
                TEST_METADATA_VALUE_2
            )


class IMAPSourceTestCase(GenericDocumentTestCase):
    auto_upload_test_document = False

    @mock.patch('imaplib.IMAP4_SSL', autospec=True)
    def test_download_document(self, mock_imaplib):
        mock_imaplib.return_value = MockIMAPServer()
        self.source = IMAPEmail.objects.create(
            document_type=self.test_document_type, label='', host='',
            password='', username=''
        )

        self.source.check_source()
        self.assertEqual(
            Document.objects.first().label, 'Ampelm\xe4nnchen.txt'
        )


class IntervalSourceTestCase(WatchFolderTestMixin, GenericDocumentTestCase):
    auto_upload_test_document = False

    def test_periodic_task_create(self):
        periodic_task_count = PeriodicTask.objects.count()

        self._create_test_watchfolder()
        self.assertTrue(PeriodicTask.objects.count() > periodic_task_count)

    def test_periodic_task_delete(self):
        self._create_test_watchfolder()
        periodic_task_count = PeriodicTask.objects.count()

        self.test_document_type.delete()
        self.assertTrue(PeriodicTask.objects.count() < periodic_task_count)


class POP3SourceTestCase(GenericDocumentTestCase):
    auto_upload_test_document = False

    @mock.patch('poplib.POP3_SSL', autospec=True)
    def test_download_document(self, mock_poplib):
        mock_poplib.return_value = MockPOP3Mailbox()
        self.source = POP3Email.objects.create(
            document_type=self.test_document_type, label='', host='',
            password='', username=''
        )

        self.source.check_source()
        self.assertEqual(
            Document.objects.first().label, 'Ampelm\xe4nnchen.txt'
        )


class SANESourceTestCase(GenericDocumentTestCase):
    auto_upload_test_document = False

    def _create_test_scanner_source(self):
        self.test_source = SaneScanner.objects.create(
            label='', device_name='test'
        )

    def test_command(self):
        self._create_test_scanner_source()
        file_object = self.test_source.execute_command(arguments=('-V',))
        self.assertTrue(force_bytes('sane') in file_object.read())

    def test_scan(self):
        self._create_test_scanner_source()

        file_object = self.test_source.get_upload_file_object(
            form_data={'document_type': self.test_document_type.pk}
        )
        self.assertTrue(file_object.size > 0)



'''
