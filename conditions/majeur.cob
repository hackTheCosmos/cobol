       INDENTIFICATION DIVISION.
       PROGRAM-ID. MAJEUR.

       ENVIRONMENT DIVISION.
       
       DATA DIVISION. 
       WORKING-STORAGE SECTION.
       77 AGE PIC 9(3).

       PROCEDURE DIVISION.

           DISPLAY "Quel est votre age ?".
           ACCEPT AGE. 
           
           IF AGE >= 18
               DISPLAY "Vous êtes majeur.".
           ELSE 
               DISPLAY "Vous êtes mineur.".
           END-IF.

           STOP RUN.
