��    �      �  �   �	      �  =  �  .   7  $   f  �   �  �         �     �     �     �  f   �  g   L  5   �     �      [        l  
   t       M   �     �  �   �     �  .   �     �     �  #   �          .     ?     M     i     w     �      �     �     �     �     �      �     �       '   '  '   O  !   w     �     �  (   �  %   �               :     ?     ^     m     u  }   ~     �       5         V  
   h     s     �     �     �     �     �     �     �     �  %     #   '     K     N     m     r     �     �     �     �     �     �     �             1     -   I  ,   w  *   �  �   �  I   a  1   �  w   �     U     e     l     �  ?   �  R   �  L     *   j  ,   �  .   �  '   �       u   0  R   �  $   �  %     *   D  '   o     �  
   �     �     �     �     �     �  H        M     Q  +   h     �     �     �     �     �     �     �     �     �        $   .      S      l      �      �      �   s   �      3!     R!     o!     !  !   �!  *   �!  7   �!     "  #   -"  	   Q"     ["  �   v"     #  s  #  @  �$  2   �%  .   �%  �   &&  �   �&     X'  
   _'     j'     s'  s   �'  b   (  =   j(     �(  �   �(  k   �)  	   )*     3*  "   B*  Z   e*     �*  �   �*     i+  0   z+  !   �+     �+  &   �+     ,     ,     /,      @,     a,     p,     u,      ~,     �,     �,  
   �,     �,  !   �,  '   �,     -  '   $-  )   L-  '   v-     �-     �-  )   �-  -   �-     .     !.  
   ;.  "   F.     i.  	   ~.  	   �.  |   �.     /     (/  J   @/     �/     �/  "   �/     �/     �/     �/     �/     �/     0     0     40  #   L0  !   p0     �0  !   �0     �0     �0     �0     �0     �0     1     1     '1     B1     b1     k1  3   {1  6   �1  7   �1  3   2  �   R2  N   �2  =   53  `   s3     �3     �3     �3     4  T   4  n   b4  l   �4  (   >5  3   g5  +   �5  6   �5     �5  �   6  \   �6  *   7  +   97  0   e7     �7     �7  	   �7     �7      �7     �7     8     !8  Y   )8     �8     �8  0   �8     �8     �8     �8     �8     �8     �8     9     9     09  	   D9  ,   N9     {9     �9     �9     �9     �9  n   �9  #   ]:  !   �:     �:     �:  !   �:  +   �:  =   ;     R;  #   g;  	   �;     �;  �   �;     u<        '   c       "   ,   p   �       �       b   \      %   !   :   ^       2                  >   +   W   K   E   1      Y   7      �   �       �   �      U   e                       Z   P   $   �   *                 l   r       {   4           @       [             �   S   Q       d   ?   O              j       u      k      �   A       �       H      )       
                  �   R   G   �   h              T           g   5   ]   M   C       �             �   s       	       D   a   x   w       ~   q       <   B       t   L      �   X   8   #      v   �   .      y   �   |   N   �   f           _   �   o   }   9   3   F   �          �   `      V   �   i   �           �   I   z       n   m           �   /   (   6               ;       �   0       =       J                         -               &    A JSON document to include in the request. Can also be a template that return a JSON document. Templates receive the workflow log entry instance as part of their context via the variable "entry_log". The "entry_log" in turn provides the "workflow_instance", "datetime", "transition", "user", and "comment" attributes. A link to the entire history of this workflow. A simple identifier for this action. API URL pointing to a document type in relation to the workflow to which it is attached. This URL is different than the canonical document type URL. API URL pointing to a workflow in relation to the document to which it is attached. This URL is different than the canonical workflow URL. Action Action type Actions Actions for workflow state: %s Assign workflows to the document type of this document to have this document execute those workflows.  Associate a workflow with some document types and documents of those types will be listed in this view. At which moment of the state this action will execute Available document types Can be an IP address, a domain or a template. Templates receive the workflow log entry instance as part of their context via the variable "entry_log". The "entry_log" in turn provides the "workflow_instance", "datetime", "transition", "user", and "comment" attributes. Comma separated list of document type primary keys to which this workflow will be attached. Comment Completion Create a "%s" workflow action Create a transition and use it to move a workflow from  one state to another. Create action Create some workflows and associated them with a document type. Active workflows will be shown here and the documents for which they are executing. Create state Create states and link them using transitions. Create states for workflow: %s Create transition Create transitions for workflow: %s Create workflow Create workflows Current state Current state of a workflow Date and time Datetime Delete Delete workflow state action: %s Delete workflows Description Destination state Detail Detail of workflow: %(workflow)s Do transition for workflow: %s Document Document "%s" transitioned successfully Document description template error: %s Document label template error: %s Document states Document types Document types assigned the workflow: %s Document types assigned this workflow Document workflows Documents with the workflow: %s Edit Edit workflow state action: %s Edit workflows Enabled Enabled? Enter the percent of completion that this state represents in relation to the workflow. Use numbers without the percent sign. Entry action data Entry action path Error updating workflow transition trigger events; %s Event trigger: %s Event type Execute workflow tools Initial Initial state Internal name Is initial state? Label Last transition Launch all workflows Launch all workflows? Modify the properties of the document New workflow state action selection No No workflows have been defined None Not a valid transition choice. On entry On exit Origin state Payload Payload JSON error: %s Payload template error: %s Perform a POST request Preview Preview of: %s Primary key of the destination state to be added. Primary key of the document type to be added. Primary key of the origin state to be added. Primary key of the transition to be added. Removing a document type from a workflow will also remove all running instances of that workflow for documents of the document type just removed. Return the completion value of the current state of the selected workflow Return the current state of the selected workflow Select if this will be the state with which you want the workflow to start in. Only one state can be the initial state. State documents States States of workflow: %s Submit The dotted Python path to the workflow action class to execute. The new description to be assigned to the document. Can be a string or a template. The new label to be assigned to the document. Can be a string or a template. There are documents in this workflow state There are no actions for this workflow state There are no documents executing this workflow There are no workflow for this document There are no workflows This value will be used by other apps to reference this workflow. Can only contain letters, numbers, and underscores. This will launch all workflows created after documents have already been uploaded. This workflow doesn't have any state This workflow doesn't have any states This workflow doesn't have any transitions Time in seconds to wait for a response. Timeout Transition Transition triggers Transition workflows Transitions Transitions of workflow: %s Triggers Triggers are events that cause this transition to execute automatically. URL URL template error: %s Unable to save transition; integrity error. User View workflows When When? Workflow Workflow documents Workflow instance Workflow instance log entries Workflow instance log entry Workflow instances Workflow launch queued successfully. Workflow runtime proxies Workflow runtime proxy Workflow state Workflow state action Workflow state actions Workflow state actions are macros that get executed when documents enters or leaves the state in which they reside. Workflow state runtime proxies Workflow state runtime proxy Workflow states Workflow transition Workflow transition trigger event Workflow transition trigger events for: %s Workflow transition trigger events updated successfully Workflow transitions Workflow transitions trigger events Workflows Workflows for document: %s Workflows store a series of states and keep track of the current state of a document. Transitions are used to change the current state to a new one. Yes Project-Id-Version: Mayan EDMS
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2019-04-09 04:32+0000
Last-Translator: Roberto Rosario
Language-Team: German (Germany) (http://www.transifex.com/rosarior/mayan-edms/language/de_DE/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: de_DE
Plural-Forms: nplurals=2; plural=(n != 1);
 Ein JSON-Dokument, das in den Request eingeschlossen werden soll. Kann auch eine Vorlage sein, die ein JSON-Dokument zurückgibt. Vorlagen erhalten die Workflowlog-Eingangsinstanz mit der Kontextvariable "entry_log". "entry_log" enthält die "workflow_instance", "datetime", "transition", "user" und "comment" Attribute. Ein Link zur kompletten Historie dieses Workflows. Ein einfacher Identifikator für diese Aktion. API URL für den Dokumententyp, der auf den Workflow verweist, mit dem er verknüpft ist. Diese URL unterscheidet sich von der kanonischen Dokumententyp-URL. API URL für den Workflow, der auf das Dokument verweist, mit dem er verknüpft ist. Diese URL unterscheidet sich von der kanonischen Workflow-URL. Aktion Aktionstyp Aktionen Aktionen für Workflowstatus %s Weisen Sie Workflows zu dem Dokumententyp dieses Dokuments zu, damit sie für dieses Dokument durchgeführt werden. Verknüpfen Sie einen Workflow mit Dokumententypen, um die Dokumente dieser Typen hier anzuzeigen. Zu welchem Zeitpunkt des Status diese Aktion ausgeführt wird Verfügbare Dokumententypen Kann eine IP-Adresse, eine Domain oder eine Vorlage sein. Vorlagen erhalten die Workflowlog-Eingangsinstanz mit der Kontextvariable "entry_log". "entry_log" enthält die "workflow_instance", "datetime", "transition", "user" und "comment" Attribute. Kommagetrennte Liste von Primärschlüsseln von Dokumententypen, mit denen dieser Workflow verknüpft wird. Kommentar Fertigstellung Eine "%s" Workflowaktion erstellen Einen Übergang erstellen und verwenden, um von einem Status in einen anderen zu wechseln. Aktion erstellen Workflows erstellen und mit einem Dokumententyp verknüpfen. Aktive Workflows werden hier angezeigt und die Dokumente, für die sie ausgeführt werden. Status erstellen Status erstellen und durch Übergänge verbinden Status für Workflow %s erstellen Übergang erstellen Übergänge für Workflow %s erstellen Workflow erstellen Workflows erstellen Aktueller Status Aktueller Status eines Workflows Datum und Zeit Zeit Löschen Workflowstatusaktion %s löschen Workflows löschen Beschreibung Zielstatus Detail Detail für Workflow %(workflow)s Übergang für Workflow %s durchführen Dokument Übergang von Dokument "%s" erfolgreich Dokumentenbeschreibung Vorlagenfehler: %s Dokumentenbezeichner Vorlagenfehler: %s Status Dokumententypen Dokumententypen zugeordnet zu Workflow %s Dokumententypen zugeordnet zu diesem Workflow Dokumentenworkflows Dokumente mit Workflow %s Bearbeiten Workflowstatusaktion %s bearbeiten Workflows bearbeiten Aktiviert Aktiviert Ermöglicht den Eintrag einer Zahl (ohne Prozentzeichen), die den Stand der Fertigstellung in Bezug auf den Workflow angibt. Daten der Eingangsaktion Pfad der Eingangsaktion Fehler bei der Aktualisierung von Workflowübergangstriggerereignissen; %s Ereignistrigger %s Ereignistyp Werkzeuge für Workflow ausführen Initial Initialstatus Interner Name Initialstatus Bezeichnung Letzter Übergang Alle Workflows starten Alle Workflows starten? Eigenschaften des Dokuments ändern Neue Workflowstatusaktionsauswahl Nein Es sind keine Workflows definiert Keiner Kein gültiger Übergang. Beim Betreten Beim Verlassen Herkunftsstatus Payload Payload JSON Fehler: %s Payload Vorlagenfehler: %s Einen POST Request durchführen Vorschau Vorschau von %s Primärschlüssel  des hinzuzufügenden Zielstatus. Primärschlüssel des hinzuzufügenden Dokumententyps. Primärschlüssel des hinzuzufügenden Herkunftsstatus. Primärschlüssel  des hinzuzufügenden Übergangs. Das Entfernen eines Dokumententyps von einem Workflow wird auch sämtliche laufenden Workflowinstanzen für andere Dokumente dieses Typs entfernen. Den Ergebniswert des aktuellen Status des ausgewählten Workflows zurückgeben Den aktuellen Status des ausgewählten Workflows zurückgeben Diesen Status markieren, wenn der Workflow damit starten soll. Nur ein Status kann initial sein. Dokumentenstatus Status Status für Workflow %s Absenden Der punktierte Pythonpfad zu der Workflowaktionsklasse, die ausgeführt werden soll. Die neue Beschreibung, die dem Dokument zugewiesen werden soll. Kann eine Zeichenfolge oder eine Vorlage sein. Der neue Bezeichner, der dem Dokument zugewiesen werden soll. Kann eine Zeichenfolge oder eine Vorlage sein. Keine Dokumente in diesem Workflowstatus Keine Aktionen vorhanden für diesen Workflowstatus Keine Dokumente führen diesen Workflow aus Es sind keine Workflows für dieses Dokument vorhanden Keine Workflows vorhanden Dieser Wert wird von anderen Programmteilen verwendet, um sich auf diesen Workflow zu beziehen. Es sind nur Buchstaben, Zahlen und Unterstriche erlaubt. Dies wird alle Workflows anstoßen, die erst nach dem Upload von Dokumenten erstellt wurden. Kein Status für diesen Workflow definiert Keine Status für diesen Workflow definiert Keine Übergänge für diesen Workflow definiert Antwortwartezeit in Sekunden Timeout Übergang Übergangstrigger Workflowübergänge durchführen Übergänge Übergänge für Workflow %s Trigger Trigger sind Ereignisse, die für eine automatische Ausführung dieses Übergangs sorgen. URL URL Vorlagenfehler: %s Integritätsfehler beim Speichern des Übergangs Benutzer Workflows anzeigen Wann Wann Workflow Workflow-Dokumente Workflow Workflow Logeinträge Workflow Logeintrag Workflows Workflow-Start wurde erfolgreich vorgemerkt. Workflow-Laufzeit-Proxies Workflow-Laufzeitproxy Workflow Status Workflowstatusaktion Statusaktionen von Workflows Workflowstatusaktionen sind Makros, die bei Betreten oder Verlassen eines Dokumentenstatus ausgeführt werden. Runtime-Proxies für Workflowstatus Laufzeitproxy für Workflowstatus Workflow Status Workflow Übergang Workflowübergangstriggerereignis Workflowübergangstriggerereignisse für %s Workflowübergangstriggerereignissen erfolgreich aktualisiert Workflow Übergänge Workflowübergangstriggerereignisse Workflows Workflows für Dokument %s Workflows speichern eine Reihenfolge von Zuständen (Status) und verfolgen den aktuellen Status eines Dokuments. Übergänge werden dazu verwendet, vom aktuellen Status zu einem neuen zu wechseln. Ja 