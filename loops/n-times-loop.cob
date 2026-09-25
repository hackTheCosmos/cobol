       IDENTIFICATION DIVISION.
       PROGRAM-ID. N-TIMES-LOOP.

      *Programme d'entraînement sur les boucles

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 x PIC 99.
       
       SCREEN SECTION.
       01  plage-output.
           02 BLANK SCREEN.
           02 LINE 2 COL 5 VALUE "x vaut : ".
           02 LINE 2 COL 14 PIC 99 FROM x.

       PROCEDURE DIVISION.
       INITIALIZE x.

       PERFORM 5 times
           COMPUTE x = x + 5
       END-PERFORM.

       DISPLAY plage-output.

       STOP RUN.
