��    �      �  �   �	        =  	  .   G  $   v  �   �  �   0     �     �     �     �  f   �  g   \  5   �     �      [         |  
   �     �  M   �     �  �   	     �  .   �     �     �  #   
     .     >     O     ]     y     �     �      �     �     �     �     �      �          .  '   7  '   _  !   �     �     �  (   �  %   �       D   *     o     �     �     �     �     �  }   �     Q     c  5   u     �  
   �     �     �     �     �                    +     @  %   V  #   |     �     �     �     �     �     �     �               #     >     U     ]  1   l  -   �  ,   �  *   �  �   $  I   �  1      w   2     �     �     �     �  ?   �  R     L   r  *   �  ,   �  .     '   F     n  u   �  R   �  $   N  %   s  *   �  '   �     �  
   �     �          (     4     P  H   Y     �     �  +   �     �     �     �                       $      6      T      p   $   �      �      �      �      �      �   s   !     �!     �!     �!     �!  !   �!  *   
"  7   5"     m"  #   �"  	   �"     �"  �   �"     `#  d  d#  r  �$  :   <&  *   w&  �   �&  �   P'     �'     �'     (  /   (  w   >(  s   �(  5   *)     `)  =  �)  x   �*  
   7+     B+  *   \+  Q   �+     �+  �   �+     �,  /   �,  *   �,     �,  /   -     =-     T-     l-  $   z-     �-     �-     �-  4   �-     �-     .     .     *.  )   2.  /   \.  	   �.  '   �.  3   �.  /   �.     "/     8/  5   L/  5   �/     �/  M   �/  &   $0     K0  0   R0     �0  
   �0     �0  �   �0     M1     a1  M   }1     �1     �1  *   �1     2     &2     52     D2     \2     e2  #   y2  %   �2  '   �2  :   �2     &3  $   )3     N3  %   V3     |3     �3     �3     �3  .   �3  (   �3     
4     &4     .4  4   B4  4   w4  1   �4  +   �4  �   
5  V   �5  ;   /6  �   k6     �6     7      7     97  Z   @7  Z   �7  V   �7  1   M8  4   8  2   �8  +   �8     9  �   ,9  f   �9  -   (:  -   V:  2   �:  .   �:     �:     �:     ;     $;     :;  $   G;     l;  [   y;     �;     �;  8   �;     0<     8<     N<  	   U<     _<     p<     �<  ;   �<  7   �<     "=  5   A=  3   w=  1   �=     �=  '   �=  (    >  �   I>  =   �>  ;   ?     L?     h?  9   �?  B   �?  T   @      Z@  :   {@     �@  '   �@  �   �@     �A        '   d       "   ,   q   �       �       c   ]      %   !   ;   _       2                  ?   +   X   L   F   1      Z   8      �   �       �   �   �   V   f                       [   Q   $   �   *                 m   s       |   5           A       \             �   T   R       e   @   P              k       v      l      �   B       �       I      )       
                  �   S   H   �   i              U           h   6   ^   N   D       �             �   t       	       E   b   y   x          r       =   C       u   M      4   Y   9   #      w   �   .      z   �   }   O   �   g           `   �   p   ~   :   3   G   �          �   a      W   �   j   �           �   J   {       o   n           �   /   (   7               <       �   0   �   >       K                         -               &    A JSON document to include in the request. Can also be a template that return a JSON document. Templates receive the workflow log entry instance as part of their context via the variable "entry_log". The "entry_log" in turn provides the "workflow_instance", "datetime", "transition", "user", and "comment" attributes. A link to the entire history of this workflow. A simple identifier for this action. API URL pointing to a document type in relation to the workflow to which it is attached. This URL is different than the canonical document type URL. API URL pointing to a workflow in relation to the document to which it is attached. This URL is different than the canonical workflow URL. Action Action type Actions Actions for workflow state: %s Assign workflows to the document type of this document to have this document execute those workflows.  Associate a workflow with some document types and documents of those types will be listed in this view. At which moment of the state this action will execute Available document types Can be an IP address, a domain or a template. Templates receive the workflow log entry instance as part of their context via the variable "entry_log". The "entry_log" in turn provides the "workflow_instance", "datetime", "transition", "user", and "comment" attributes. Comma separated list of document type primary keys to which this workflow will be attached. Comment Completion Create a "%s" workflow action Create a transition and use it to move a workflow from  one state to another. Create action Create some workflows and associated them with a document type. Active workflows will be shown here and the documents for which they are executing. Create state Create states and link them using transitions. Create states for workflow: %s Create transition Create transitions for workflow: %s Create workflow Create workflows Current state Current state of a workflow Date and time Datetime Delete Delete workflow state action: %s Delete workflows Description Destination state Detail Detail of workflow: %(workflow)s Do transition for workflow: %s Document Document "%s" transitioned successfully Document description template error: %s Document label template error: %s Document states Document types Document types assigned the workflow: %s Document types assigned this workflow Document workflows Documents in the workflow "%(workflow)s", state "%(workflow_state)s" Documents with the workflow: %s Edit Edit workflow state action: %s Edit workflows Enabled Enabled? Enter the percent of completion that this state represents in relation to the workflow. Use numbers without the percent sign. Entry action data Entry action path Error updating workflow transition trigger events; %s Event trigger: %s Event type Execute workflow tools Initial Initial state Internal name Is initial state? Label Last transition Launch all workflows Launch all workflows? Modify the properties of the document New workflow state action selection No No workflows have been defined None Not a valid transition choice. On entry On exit Origin state Payload Payload JSON error: %s Payload template error: %s Perform a POST request Preview Preview of: %s Primary key of the destination state to be added. Primary key of the document type to be added. Primary key of the origin state to be added. Primary key of the transition to be added. Removing a document type from a workflow will also remove all running instances of that workflow for documents of the document type just removed. Return the completion value of the current state of the selected workflow Return the current state of the selected workflow Select if this will be the state with which you want the workflow to start in. Only one state can be the initial state. State documents States States of workflow: %s Submit The dotted Python path to the workflow action class to execute. The new description to be assigned to the document. Can be a string or a template. The new label to be assigned to the document. Can be a string or a template. There are documents in this workflow state There are no actions for this workflow state There are no documents executing this workflow There are no workflow for this document There are no workflows This value will be used by other apps to reference this workflow. Can only contain letters, numbers, and underscores. This will launch all workflows created after documents have already been uploaded. This workflow doesn't have any state This workflow doesn't have any states This workflow doesn't have any transitions Time in seconds to wait for a response. Timeout Transition Transition triggers Transition workflows Transitions Transitions of workflow: %s Triggers Triggers are events that cause this transition to execute automatically. URL URL template error: %s Unable to save transition; integrity error. User View workflows When When? Workflow Workflow documents Workflow instance Workflow instance log entries Workflow instance log entry Workflow instances Workflow launch queued successfully. Workflow runtime proxies Workflow runtime proxy Workflow state Workflow state action Workflow state actions Workflow state actions are macros that get executed when documents enters or leaves the state in which they reside. Workflow state runtime proxies Workflow state runtime proxy Workflow states Workflow transition Workflow transition trigger event Workflow transition trigger events for: %s Workflow transition trigger events updated successfully Workflow transitions Workflow transitions trigger events Workflows Workflows for document: %s Workflows store a series of states and keep track of the current state of a document. Transitions are used to change the current state to a new one. Yes Project-Id-Version: Mayan EDMS
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2019-04-09 04:49+0000
Last-Translator: Roberto Rosario
Language-Team: Spanish (http://www.transifex.com/rosarior/mayan-edms/language/es/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: es
Plural-Forms: nplurals=2; plural=(n != 1);
 Un documento JSON a incluir en la solicitud. También puede ser una plantilla que devuelva un documento JSON. Las plantillas reciben la instancia de entrada del registro de flujo de trabajo como parte de su contexto a través de la variable "entry_log". El "entry_log" a su vez proporciona los atributos "workflow_instance", "datetime", "transition", "user" y "comment". Un enlace a la historia completa de este flujo de trabajo. Un identificador simple para esta acción. URL de la API que apunta a un tipo de documento en relación con el flujo de trabajo al que está conectado. Esta URL es diferente de la URL del tipo de documento canónico. API URL que apunta a un flujo de trabajo en relación con el documento al que está asociado. Esta URL es diferente de la URL de flujo de trabajo canónico. Acción Tipo de acción Acciones Acciones para el estado de flujo de trabajo: %s Asigne flujos de trabajo al tipo de documento de este documento para que este documento ejecute esos flujos de trabajo. Asociar un flujo de trabajo con algunos tipos de documentos y documentos de esos tipos se enumerará en esta vista. En qué momento del estado se ejecutará esta acción Tipos de documentos disponibles Puede ser una dirección IP, un dominio o una plantilla. Las plantillas reciben la instancia de entrada del registro de flujo de trabajo como parte de su contexto a través de la variable "entry_log". El "entry_log" a su vez proporciona los atributos "workflow_instance", "datetime", "transition", "user" y "comment". Lista separada por comas de las llaves principales de tipos de documentos a los que se adjuntará este flujo de trabajo. Comentario Cantidad de completación Crear una acción de flujo de trabajo "%s" Cree una transición y úselo para mover un flujo de trabajo de un estado a otro. Crear acción Cree algunos flujos de trabajo y asócielos con un tipo de documento. Los flujos de trabajo activos se mostrarán aquí y los documentos para los que se están ejecutando. Crear estado Crea estados y vincúlalos usando transiciones. Crear estados para el flujo de trabajo: %s Crear transición Crear transiciones para el flujo de trabajo: %s Crear flujo de trabajo Crear flujos de trabajo Estado actual Estado actual de un flujo de trabajo Fecha y hora Fecha y hora Borrar Eliminar acción del estado del flujo de trabajo: %s Borrar flujos de trabajo Descripción Estado destino Detalle Detalle de flujo de trabajo: %(workflow)s Realizar la transición de flujo de trabajo: %s Documento Documento "%s" transicionado con éxito Error de plantilla de descripción de documento: %s Error de plantilla de etiqueta de documento: %s Estados de documentos Tipos de documentos Tipos de documentos asignados al flujo de trabajo: %s Tipos de documentos asignados a este flujo de trabajo Flujos de trabajo de document Documentos en el flujo de trabajo "%(workflow)s", estado "%(workflow_state)s" Documentos con el flujo de trabajo: %s Editar Editar acción de estado de flujo de trabajo: %s Editar flujos de trabajo Habilitado ¿Habilitado? Introduzca el porcentaje de finalización que este estado representa en relación con el flujo de trabajo. Utilice números sin el signo de porcentaje. Datos de la acción Ruta de acceso a la acción Error al actualizar eventos de disparo de transición de flujo de trabajo; %s Activador de eventos: %s Tipo de evento Ejecutar herramientas de flujos de trabajo Inicial Estado inicial Nombre interno ¿Es el estado inicial? Etiqueta Última transición Iniciar todos los flujos de trabajo ¿Lanzar todos los flujos de trabajo? Modificar las propiedades del documento Selección de nueva acciones de estado de flujo de trabajo No No se han definido flujos de trabajo Ninguno No hay opción valida de transición. A la entrada A la salida Estado origen Datos a enviar Error interpretando JSON de datos a enviar: %s Error de plantilla de datos a enviar: %s Realizar una solicitud POST Muestra Vista previa de: %s Llave primaria del estado de destino a ser agregado. Llave primaria del tipo de documento a ser agregado. Llave primaria del estado inicial a ser agregado. Llave primaria de la transición a añadir. La eliminación de un tipo de documento de un flujo de trabajo también eliminará todas las instancias en ejecución de ese flujo de trabajo para documentos del tipo de documento que se acaba de eliminar. Devolver el valor de finalización del estado actual del flujo de trabajo seleccionado Devolver el estado actual del flujo de trabajo seleccionado Seleccione si este va a ser el estado con el que desea que el flujo de trabajo comience. Sólo un estado puede ser el estado inicial. Documentos del estado de flujo Estados Estados del flujo de trabajo: %s Enviar La ruta punteada de Python a la clase de acción de flujo de trabajo que se va a ejecutar. La nueva descripción que se asignará al documento. Puede ser una cadena o una plantilla. La nueva etiqueta que se asignará al documento. Puede ser una cadena o una plantilla. Hay documentos en este estado de flujo de trabajo No hay acciones para este estado de flujo de trabajo No hay documentos ejecutando este flujo de trabajo No hay flujo de trabajo para este documento No hay flujos de trabajo Este valor será utilizado por otras aplicaciones para hacer referencia a este flujo de trabajo. Sólo puede contener letras, números y subrayados. Esto iniciará todos los flujos de trabajo creados después de que los documentos ya se hayan cargado. Este flujo de trabajo no tiene ningún estado Este flujo de trabajo no tiene ningún estado Este flujo de trabajo no tiene ninguna transición Tiempo en segundos para esperar una respuesta. Tiempo de expiración Transición Disparadores de transición Realizar transiciones Transiciones Transiciones de flujo de trabajo: %s Disparadores Los desencadenantes son eventos que hacen que esta transición se ejecute automáticamente. URL Error de plantilla de URL: %s No se puede guardar la transición; error de integridad. Usuario Ver flujos de trabajo Cuando ¿Cuando? Flujo de trabajo Documentos del flujo de trabajo Instancia de flujo de trabajo Entradas de registro de las instancias de flujos de trabajo Entrada de registro de la instancia de flujo de trabajo Instancias de flujo de trabajo Lanzamiento de flujos de trabajo sometido con éxito. Proxies de tiempo de ejecución de flujo de trabajo Proxy de tiempo de ejecución de flujo de trabajo Estado de flujo de trabajo Acción del estado del flujo de trabajo Acciones del estado del flujo de trabajo Las acciones de estado de flujo de trabajo son macros que se ejecutan cuando los documentos entran o salen del estado en el que residen. Proxies de tiempo de ejecución de estado de flujo de trabajo Proxy de tiempo de ejecución de estado de flujo de trabajo Estados de flujo de trabajo Transición de flujo de trabajo Evento de activación de transiciones de flujo de trabajo Eventos de activación de transición de flujo de trabajo para: %s Eventos de activación de transición de flujo de trabajo actualizados correctamente Transiciones de flujo de trabajo Eventos de activación de transiciones de flujo de trabajo Flujos de trabajo Flujos de trabajo para el documento: %s Los flujos de trabajo almacenan una serie de estados y realizan un seguimiento del estado actual de un documento. Las transiciones se utilizan para cambiar el estado actual a uno nuevo. Si 