*** Settings ***
Library     Dialogs
Library    SeleniumLibrary


*** Test Cases ***
Exemplo 1
    ${nome}=    Get Value From User    Digite o seu nome:
    Log    ${nome}

Exemplo 2
    ${opt}=    Get Selection From User    Selecione o seu sexo    Masculino    Feminino
