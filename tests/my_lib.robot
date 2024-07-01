*** Settings ***
Library     ../resources/libs/my_lib.py


*** Test Cases ***
Deve imprimir uma mensagem simples passada por argumento
    Hello    Hello, world!


Deve garantir que a soma entre dois números esteja correta
    ${res}=     Soma    ${10}    ${20}
    Should Be Equal    ${res}    ${30}