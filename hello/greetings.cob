       identification division.
       program-id. Greetings.
      *    Ce programme salut l'utilisateur de façon personnalisée après
      *    lui avoir demandé son nom.
       data division.
       working-storage section.
           77 ws-name PIC X(30).
       
       screen section. 
           01 output-plage-hello.
               02 BLANK SCREEN.
               02 LINE 5 COL 10 VALUE "Bienvenue !".

           01 input-plage-name.
               02 LINE 10 COL 10 VALUE "Quel est votre nom ? : ".
               02 PIC X(30) TO ws-name REQUIRED.
            
           01 output-plage-name.
               02 LINE 15 COL 10 VALUE "Salut ".
               02 LINE 15 COL 16 PIC X(30) FROM ws-name.

       procedure division.
           DISPLAY output-plage-hello.
           ACCEPT input-plage-name.
           DISPLAY output-plage-name.
           
           STOP RUN.
