��    a      $  �   ,      8  1   9  2   k  ,   �  -   �  '   �  ,   !	  �   N	     �	     �	     �	     �	  9   �	     8
     V
     o
     �
  	   �
     �
     �
     �
     �
     �
     �
          +     D     I     `     y  Z   �  �   �     }  
   �  
   �     �     �  	   �     �     �  S   �     $  !   *     L     P  	   \     f     m     u  .   �     �  y   �     ?     U  %   ]     �     �     �  �   �     �      �  	   �     �     �     �     �  
   �       4        C  A   [  2   �  F   �  7        O     T     o     �  !   �  ,   �  &   �  7     "   G  X   j  �   �     T     \     d     z     �     �     �  N   �          #  �   A  s  �  �  A  :   �  <     2   O  3   �  $   �  /   �  �        �     �     �     �  B   �                ;     S     _     k     s     {      �     �  $   �     �          )     0     L     l  n   �  �   �     �     �     �  
   �     �               "  _   '     �  %   �     �     �     �     �     �       2        E  �   V     �     �  .     $   1     V     c  �   i     +   '   1      Y      g      n   #         �      �      �   6   �      !  X   +!  ?   �!  M   �!  I   "     \"  !   b"     �"     �"  &   �"  0   �"  )   #  ;   <#  )   x#  k   �#  �   $     �$     �$     �$     �$  $   �$  $    %     %%  G   .%     v%  &   �%  �   �%  �  L&     .          ]                         	       <                  )          
                   \      C      +   9   "      8          4   %   I   T          ^       L   `         @   5   >   R   E          0   1           =       *   W   M       K      a   A   /   D   ?          S       [   Z   P      2           3      B   (      Q             ;   6   X       U          _      J       7         N       V       #   -   ,   '   Y      G   $   F      O   !       H      :              &    %(count)d document link queued for email delivery %(count)d document links queued for email delivery %(count)d document queued for email delivery %(count)d documents queued for email delivery %(email)s is not a valid email address. A short text describing the mailing profile. Attached to this email is the document: {{ document }}

 --------
 This email has been sent from %(project_title)s (%(project_website)s) Backend Backend data Backend path Body Body of the email to send. Can be a string or a template. Create a "%s" mailing profile Create a mailing profile Create mailing profile  Date and time Date time Default Delete Delete a mailing profile Delete mailing profile: %s Django SMTP backend Django file based backend Document mailing error log Document: {{ document }} Edit Edit a mailing profile Edit mailing profile: %s Email address Email address of the recipient. Can be multiple addresses separated by comma or semicolon. Email address of the recipient. Can be multiple addresses separated by comma or semicolon. A template can be used to reference properties of the document. Email document Email link Email sent Enabled Error log for: %s File path From Host If default, this mailing profile will be pre-selected on the document mailing form. Label Link for document: {{ document }} Log Log entries Log entry Mailer Mailing Mailing profile Mailing profile to use when sending the email. Mailing profiles Mailing profiles are email configurations. Mailing profiles allow sending documents as attachments or as links via email. Mailing profiles list Message New mailing profile backend selection No mailing profiles available Null backend Password Password to use for the SMTP server. This setting is used in conjunction with the username when authenticating to the SMTP server. If either of these settings is empty, authentication won't be attempted. Port Port to use for the SMTP server. Recipient Send Send document Send document link via email Send document via email Send email Subject Subject of the email. Can be a string or a template. System mailer error log Template for the document email form body text. Can include HTML. Template for the document email form subject line. Template for the document link email form body text. Can include HTML. Template for the document link email form subject line. Test Test email from Mayan EDMS Test email sent. Test mailing profile: %s The backend class for this entry. The dotted Python path to the backend class. The driver to use when sending emails. The email profile that will be used to send this email. The host to use for sending email. The sender's address. Some system will refuse to send messages if this value is not set. To access this document click on the following link: {{ link }}

--------
 This email has been sent from %(project_title)s (%(project_website)s) Use SSL Use TLS Use a mailing profile User mailer User mailer log entries User mailer log entry Username Username to use for the SMTP server. If empty, authentication won't attempted. View a mailing profile View system mailing error log Whether to use a TLS (secure) connection when talking to the SMTP server. This is used for explicit TLS connections, generally on port 587. Whether to use an implicit TLS (secure) connection when talking to the SMTP server. In most email documentation this type of TLS connection is referred to as SSL. It is generally used on port 465. If you are experiencing problems, see the explicit TLS setting "Use TLS". Note that "Use TLS" and "Use SSL" are mutually exclusive, so only set one of those settings to True. Project-Id-Version: Mayan EDMS
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2020-03-28 12:50+0000
Last-Translator: Roberto Vasconcelos Novaes <rvnovaes@gmail.com>
Language-Team: Portuguese (Brazil) (http://www.transifex.com/rosarior/mayan-edms/language/pt_BR/)
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
 %(count)d link de documento em fila para entrega de e-mail %(count)d links de documentos em fila para entrega de e-mail %(count)d documento em fila para entrega de e-mail %(count)d documentos em fila para entrega de e-mail %(email)s não é um e-mail válido. Um texto curto descrevendo o perfil de mailing. Se anexa a este documento de e-mail: {{ document }}
--------
Este e-mail foi enviado por %(project_title)s (%(project_website)s) Backend Dados do backend Caminho do backend Corpo Corpo do e-mail a ser enviado. Pode ser uma string ou um template. Criar um perfil de e-mail "%s" Criar um perfil de mailing Criar perfil de mailing Data e hora Data e hora Padrão Excluir Excluir um perfil de mailing Excluir um perfil de mailing: %s Backend SMTP do Django Backend baseado em arquivo do Django Registro de erro de envio Documento: {{ document }} Editar Editar um perfil de mailing Editar um perfil de mailing: %s Endereço de e-mail Endereço de e-mail do destinatário. Podem ser vários endereços separados por vírgula ou ponto e vírgula. Endereço de e-mail do destinatário. Podem ser vários endereços separados por vírgulas ou pontos e vírgulas. Um template pode ser usado para referênciar propriedades do documento. Enviar documento por e-mail Enviar link por e-mail E-mail enviado Habilitado Log de erros para: %s Caminho do arquivo De Host Se padrão, este perfil de mailing será preselecionado no formulário de mailing do documento. Rótulo Link para o documento: {{ document }} Log As entradas de log Entrada de registro Envio de emails Envio de e-mails Perfil de e-mail Perfil de mailing a ser usado para enviar o e-mail Perfis de e-mail Perfis de mailing são configurações de e-mail. Perfis de mailing permitem o envio de documentos como anexos ou como links via e-mail. Lista de perfis de e-mail Mensagem Nova seleção de backend de perfil de mailing Nenhum perfil de mailing disponível Backend nulo Senha Senha do servidor SMTP. Esse valor é usado em conjunto com o nome de usário ao se autenticar no servidor SMTP. Se algum destes valores estiver vazio, a autenticação SMTP não será tentada. Porta Porta a ser usada para o servidor SMPT. Destinatário Enviar Enviar documento Enviar link do documento por e-mail Enviar documento por  e-mail Enviar e-mail Assunto Assunto do e-mail. Pode ser uma string ou um template. Log de erros do System Mailer Template para o texto do corpo do formulário de e-mail de documento. Pode incluir HTML. Modelo para a linha de assunto do e-mail de envio de documento. Template para o link do documento do corpo do formulário. Pode incluir HTML. Modelo para a linha de assunto do e-mail para envio do link do documento. Teste E-mail de teste para o Mayan EDMS E-mail de teste enviado. Testar perfil de mailing: %s A classe de backend para esta entrada. O caminho pontudado da classe backend do Python. O driver a ser usado no envio de e-mails. O perfil de e-mail que será usado para enviar este e-mail. O host a ser usado para envio de e-mails. O endereço do remetente. Alguns sistemas podem recusar a enviar mensagens se este valor não for definido. Para acessar este documento clique no link a seguir: {{ link }}
--------
Este e-mail foi enviado por %(project_title)s (%(project_website)s) Usar SSL Usar TLS Usar um perfil de mainling Mailer do usuário Entradas de log de mailer de usário Entrada de log de mailer do usuário Usuário Usuário do servidor SMTP. Se vazio, não será tentada autenticação. Ver um perfil de mailing Ver log de erros do sistema de mailing Se deve ser usada a conexão TLS (segura) ao comunicar-se com o servidor SMTP. Essa é usada para conexões TLS explícitas, geralmente na porta 587. Define se deve ser utilizada uma conexão implícita TLS (segura) ao comunicar-se com o servidor SMTP. Na maior parte da documentação de e-mail este tipo de conexão TLS é conhecida como SSL. Geralmente é usada a porta 465. Se você está experimentando problemas, veja o parâmetro de TSL explícita "Use TLS" EMAIL_USE_TLS. Tenha em mente que "Use TLS" EMAIL_USE_TLS  e "Use SSL" EMAIL_USE_SSL são mutuamente excludentes, razão pela qual apenas um dos parâmetros pode ser True. 