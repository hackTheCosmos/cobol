       IDENTIFICATION DIVISION.
       PROGRAM-ID. TP-PLUS-OU-MOINS.
      * L'utilisateur doit deviner un nombre en 0 et 100

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77 ws-nb PIC 999.
       77 seed PIC 9(8).
       77 nbAleatoire PIC 999.

       SCREEN SECTION.

       01 plage-debug.
           02 LINE 2 COL 5 VALUE "Le nb choisi est : ".
           02 PIC 999 FROM nbAleatoire.

       01 plage-input.
           02 LINE 5 COL 5 VALUE "Vous devez essayer de deviner quel chi
      -    "ffre entre 1 et 100 l'ordinateur vient de choisir : ". 
           02 PIC 999 TO ws-nb REQUIRED.
       
       01 plage-moins.
           02 LINE 10 COL 5 VALUE "Essayez un nombre moins grand : ".
           02 PIC 999 TO ws-nb REQUIRED.
       
       01 plage-plus.
           02 LINE 10 COL 5 VALUE "Essayez un nombre plus grand : ".
           02 PIC 999 TO ws-nb REQUIRED.
       
       01 plage-gagne.
           02 LINE 15 COL 5 VALUE "Bravo vous avez reussi !".

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.       
           MOVE FUNCTION CURRENT-DATE(9:8) TO seed.
           COMPUTE nbAleatoire = FUNCTION RANDOM (seed) * 100 + 1.
           DISPLAY plage-debug.
           DISPLAY plage-input.
           ACCEPT plage-input.
           PERFORM NB-EVALUATION UNTIL ws-nb = nbAleatoire.
           DISPLAY plage-gagne.
           STOP RUN.
       
       NB-EVALUATION.
           IF ws-nb > nbAleatoire
               DISPLAY plage-moins
               ACCEPT plage-moins
           ELSE 
               DISPLAY plage-plus
               ACCEPT plage-plus
           END-IF.
       

