       IDENTIFICATION DIVISION.
       PROGRAM-ID. BOOLEAN-LOOP.
      *    Ce programme est un exercice sur une boucle booléenne.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 i PIC 999.

       SCREEN SECTION.
       01 plage-output-line.
           02 LINE i COL 5 VALUE "Ici, c'est la ligne : ".
           02 PIC ZZ9 FROM i.

       PROCEDURE DIVISION.
       
       MOVE 1 TO i.

       PERFORM UNTIL i > 10
           DISPLAY plage-output-line
           COMPUTE i = i + 1
       END-PERFORM.

       STOP RUN.
