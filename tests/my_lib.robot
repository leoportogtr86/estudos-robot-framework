*** Settings ***
Library     ../resources/libs/my_lib.py


*** Test Cases ***
Deve imprimir uma mensagem simples passada por argumento
    Hello    Hello, world!
