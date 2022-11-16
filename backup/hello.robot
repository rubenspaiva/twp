***Settings***
Library        hello.py

***Test Cases***
Deve retornar mensagem de boas vindas
   ${resultado}=    Hello Robot    TEST
   Should Be Equal   ${resultado}    Olá, TEST.