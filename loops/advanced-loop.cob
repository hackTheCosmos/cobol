       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADVANCED-LOOP.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 i PIC 999.

       SCREEN SECTION.
       01 plage-line-output.
           02 LINE i COL 5 VALUE "Ici c'est la ligne :".
           02 PIC ZZ9 FROM i.
           
       PROCEDURE DIVISION.

       PERFORM VARYING i FROM 5 BY 5 UNTIL i > 20
           DISPLAY plage-line-output
       END-PERFORM.

       STOP RUN.
