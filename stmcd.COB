      ******************************************************************
      * Author: MATHEUS STYS
      * Date: 14/04/25
      * Purpose: SISTEMA DE CADASTRO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STMCAD010.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 DADOS-PESSOA.
           02 WS-NOME                            PIC A(30) VALUE SPACES.
           02 WS-IDADE                           PIC 9(02) VALUE ZEROS.
           02 WS-EMAIL                           PIC X(30) VALUE SPACES.
           02 WS-CLASSE                          PIC X(20) VALUE SPACES.
       77 WS-COUNT                               PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.



           DISPLAY '**********************************************'
           DISPLAY '       SISTEMA DE CADASTRO DE USUARIO         '
           DISPLAY '**********************************************'

           PERFORM 3 TIMES

           INITIALIZE DADOS-PESSOA

           DISPLAY 'DIGITE SEU NOME: '
           ACCEPT WS-NOME
           DISPLAY 'DIGITE SUA IDADE: '
           ACCEPT WS-IDADE
           DISPLAY 'DIGITE SEU MELHOR EMAIL: '
           ACCEPT WS-EMAIL

           INITIALIZE WS-COUNT
           INSPECT WS-EMAIL TALLYING WS-COUNT FOR ALL '@'

           IF WS-IDADE < 18
               MOVE 'MENOR DE IDADE'       TO WS-CLASSE
           ELSE
               MOVE 'MAIOR DE IDADE'       TO WS-CLASSE
           END-IF


           IF WS-COUNT < 1
               DISPLAY '*****************************************'
               DISPLAY '| NOME: ' WS-NOME
               DISPLAY '| IDADE: ' WS-IDADE
               DISPLAY '| EMAIL: ' WS-EMAIL
               DISPLAY '| STATUS: INVALIDO'
               DISPLAY '| CLASSE: ' WS-CLASSE
               DISPLAY '| USUARIO NAO CADASTRADO'
               DISPLAY '*****************************************'
           ELSE
               DISPLAY '*****************************************'
               DISPLAY '| NOME: ' WS-NOME
               DISPLAY '| IDADE: ' WS-IDADE
               DISPLAY '| EMAIL: ' WS-EMAIL
               DISPLAY '| STATUS: VALIDO'
               DISPLAY '| CLASSE: ' WS-CLASSE
               DISPLAY '| USUARIO CADASTRADO COM SUCESSO'
               DISPLAY '*****************************************'

           END-IF

           END-PERFORM.

            STOP RUN.
       END PROGRAM STMCAD010.
