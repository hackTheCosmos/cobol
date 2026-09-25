       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITION-AVEC-PARAGRAPHE.
      *    Ce programme execute une condition (affiche si l'entrée ...
      *    utilisateur est supérieure ou inférieure à 100).

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  ws-value PIC 999.

       SCREEN SECTION.

       01  plage-hello.
           02 BLANK SCREEN.
           02 LINE 2 COL 5 VALUE "Bonjour, voyons si votre nombre est". 
           02 VALUE " inferieur ou superieur a 100 ?".
       
       01  plage-input.
           02 LINE 5 COL 5 VALUE "Choisissez un nombre de 3 chiffres".
           02 VALUE " maximum : ".
           02 PIC 999 TO ws-value REQUIRED.

       01  plage-output-sup.
           02 LINE 8 COL 5 VALUE "Votre nombre est superieur ou ".
           02 VALUE " egal a 100".

       01  plage-output-inf.
           02 LINE 8 COL 5 VALUE "Votre nombre est inferieur a 100".
       
       PROCEDURE DIVISION.
       
       main-paragraphe.
       DISPLAY plage-hello.
       ACCEPT plage-input.
       
       evaluation.
           IF ws-value < 100 THEN 
               DISPLAY plage-output-inf
           ELSE 
               DISPLAY plage-output-sup
           END-IF.

       STOP RUN.
