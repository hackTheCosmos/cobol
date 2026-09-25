       IDENTIFICATION DIVISION.
       PROGRAM-ID. MENTION-NOTE-BOOLEANS.
      *    Ce programme donne la mention obtenue selon la note saisie.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77  ws-note PIC 99v99.
       
       88  ws-insuffisant VALUE 0 THRU 9,99.
       88  ws-passable VALUE 10 THRU 11,99.
       88  ws-assez_bien VALUE 12 THRU 13,99.
       88  ws-bien VALUE 14 THRU 15,99.
       88  ws-tres_bien VALUE 16 THRU 20.

       SCREEN SECTION.
       01 plage-input.
           02 LINE 2 COL 5 VALUE "Bonjour ! indiquez votre note : ".
           02 PIC 99,99 TO ws-note.

       01 plage-insuffisant.
           02 LINE 4 COL 5 VALUE "Note insuffisante pour avoir une".
           02 VALUE " mention".
       
       01 plage-passable.
           02 LINE 4 COL 5 VALUE "Mention passable".
       01 plage-assez_bien.
           02 LINE 4 COL 5 VALUE "Mention assez bien".
       01 plage-bien.
           02 LINE 4 COL 5 VALUE "Mention bien".
       01 plage-tres_bien.
           02 LINE 4 COL 5 VALUE "Mention tres bien".

       PROCEDURE DIVISION.
       
       ACCEPT plage-input.

       IF ws-insuffisant THEN 
           DISPLAY plage-insuffisant
       ELSE
           IF ws-passable THEN 
               DISPLAY plage-passable
           ELSE 
               IF ws-assez_bien THEN 
                   DISPLAY plage-assez_bien
               ELSE 
                   IF ws-bien THEN 
                       DISPLAY plage-bien
                   ELSE 
                       DISPLAY plage-tres_bien
                   END-IF
               END-IF
           END-IF 
       END-IF.
       
       STOP RUN.