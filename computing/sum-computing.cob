       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUM-COMPUTING.
      *Calcul la somme de deux termes saisis par l'utilisateur
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 ws-a PIC 99.
       77 ws-b PIC 99.
       77 ws-c PIC 999.

       SCREEN SECTION.
           01 output-plage-hello.
               02 BLANK SCREEN.
               02 LINE 5 COL 5 VALUE "Bonjour !".
               
           01 input-plage-terms.
               02 LINE 7 COL 5 VALUE "1er terme de l'addition : ".
               02 PIC 99 TO ws-a REQUIRED.
               02 LINE 9 COL 5 VALUE "2eme terme de l'addition : ".
               02 PIC 99 TO ws-b REQUIRED.

           01 output-sum.
               02 LINE 11 COL 5.
               02 PIC z(2) FROM ws-a.
               02 COL 8 VALUE ' + '.
               02 PIC z(2) FROM ws-b.
               02 COL 13 VALUE ' = '.
               02 PIC z(3) FROM ws-c.


       PROCEDURE DIVISION.
           
           DISPLAY output-plage-hello.
           ACCEPT input-plage-terms.
           COMPUTE ws-c = ws-a + ws-b.
           DISPLAY output-sum.
       
       STOP RUN.
