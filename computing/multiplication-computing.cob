       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLICATION-COMPUTING.
      *Fait la multiplication de deux facteurs saisis par l'utilisateur

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  ws-a PIC 9.
       77  ws-b PIC 9.
       77  ws-c PIC 99.

       SCREEN SECTION.
       01 output-hello.
           02 BLANK SCREEN.
           02 LINE 2 COL 5 VALUE "Bienvenue dans le multiplicateur".
       01 input-factors.
           02 LINE 5 COL 5 VALUE "1er facteur : ".
           02 PIC 9 TO ws-a.
           02 LINE 7 COL 5 VALUE "2eme facteur : ".
           02 PIC 9 TO ws-b.

       01 output-result.
           02 LINE 10 COL 5.
           02 PIC 9 FROM ws-a.
           02 LINE 10 COL 6 VALUE " x ".
           02 LINE 10 COL 9.
           02 PIC 9 FROM ws-b.
           02 LINE 10 COL 10 VALUE " = ".
           02 LINE 10 COL 13.
           02 PIC z(2) FROM ws-c.

       PROCEDURE DIVISION.
           DISPLAY output-hello.
           ACCEPT input-factors.
           COMPUTE ws-c = ws-a * ws-b.
           DISPLAY output-result.

       STOP RUN.
