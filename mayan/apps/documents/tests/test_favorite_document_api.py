from rest_framework import status

from mayan.apps.rest_api.tests.base import BaseAPITestCase

from ..models.favorite_document_models import FavoriteDocument
from ..permissions import permission_document_view

from .mixins.document_mixins import DocumentTestMixin
from .mixins.favorite_document_mixins import (
    FavoriteDocumentAPIViewTestMixin, FavoriteDocumentTestMixin
)


class FavoriteDocumentAPIViewTestCase(
    FavoriteDocumentAPIViewTestMixin, FavoriteDocumentTestMixin,
    DocumentTestMixin, BaseAPITestCase
):
    _test_event_object_name = 'test_document'

    def test_favorite_document_create_api_view_no_permission(self):
        favorite_document_count = FavoriteDocument.objects.count()

        self._clear_events()

        response = self._request_test_favorite_document_create_api_view()

        self.assertEqual(response.status_code, status.HTTP_404_NOT_FOUND)

        self.assertEqual(
            FavoriteDocument.objects.count(), favorite_document_count
        )
        event = self._get_test_object_event()
        self.assertEqual(event, None)

    def test_favorite_document_create_api_view_with_access(self):
        favorite_document_count = FavoriteDocument.objects.count()

        self.grant_access(
            obj=self.test_document,
            permission=permission_document_view
        )

        self._clear_events()

        response = self._request_test_favorite_document_create_api_view()
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)

        self.assertEqual(
            FavoriteDocument.objects.count(), favorite_document_count + 1
        )
        self.assertEqual(
            self.test_favorite_document.document.pk, self.test_document.pk
        )

        event = self._get_test_object_event()
        self.assertEqual(event, None)

    def test_favorite_document_delete_api_view_no_permission(self):
        self._document_add_to_favorites()

        favorite_document_count = FavoriteDocument.objects.count()

        self._clear_events()

        response = self._request_test_favorite_document_delete_api_view()
        self.assertEqual(response.status_code, status.HTTP_404_NOT_FOUND)

        self.assertEqual(
            FavoriteDocument.objects.count(), favorite_document_count
        )

        event = self._get_test_object_event()
        self.assertEqual(event, None)

    def test_favorite_document_delete_api_view_with_access(self):
        self._document_add_to_favorites()

        favorite_document_count = FavoriteDocument.objects.count()

        self.grant_access(
            obj=self.test_document,
            permission=permission_document_view
        )

        self._clear_events()

        response = self._request_test_favorite_document_delete_api_view()
        self.assertEqual(response.status_code, status.HTTP_204_NO_CONTENT)

        self.assertEqual(
            FavoriteDocument.objects.count(), favorite_document_count - 1
        )

        event = self._get_test_object_event()
        self.assertEqual(event, None)

    def test_favorite_document_detail_api_view_no_permission(self):
        self._document_add_to_favorites()

        self._clear_events()

        response = self._request_test_favorite_document_detail_api_view()
        self.assertEqual(response.status_code, status.HTTP_404_NOT_FOUND)

        event = self._get_test_object_event()
        self.assertEqual(event, None)

    def test_favorite_document_detail_api_view_with_access(self):
        self._document_add_to_favorites()

        self.grant_access(
            obj=self.test_document,
            permission=permission_document_view
        )

        self._clear_events()

        response = self._request_test_favorite_document_detail_api_view()
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(
            response.data['document']['label'],
            self.test_document.label
        )

        event = self._get_test_object_event()
        self.assertEqual(event, None)

    def test_favorite_document_list_api_view_no_permission(self):
        self._document_add_to_favorites()

        favorite_document_count = FavoriteDocument.objects.count()

        self._clear_events()

        response = self._request_test_favorite_document_list_api_view()
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(response.data['count'], favorite_document_count - 1)

        event = self._get_test_object_event()
        self.assertEqual(event, None)

    def test_favorite_document_list_api_view_with_access(self):
        self._document_add_to_favorites()

        favorite_document_count = FavoriteDocument.objects.count()

        self.grant_access(
            obj=self.test_document,
            permission=permission_document_view
        )

        self._clear_events()

        response = self._request_test_favorite_document_list_api_view()
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(response.data['count'], favorite_document_count)
        self.assertEqual(
            response.data['results'][0]['document']['label'],
            self.test_document.label
        )

        event = self._get_test_object_event()
        self.assertEqual(event, None)
