*** Settings ***
Resource    ../custom_keyword.robot


*** Test Cases ***
Teste Imprimir Olá Mundo
    [Documentation]    Imprime a frase "Olá, mundo" no console
    Imprimir Olá Mundo
