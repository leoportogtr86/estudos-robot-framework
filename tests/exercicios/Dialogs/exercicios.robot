*** Settings ***
Library     Dialogs


*** Test Cases ***
Ex1
    ${nome}    Get Value From User    Digite o seu nome
    Log    ${nome}

Ex2
    ${opt}=    Get Selection From User    Você está empregado atualmente?    Sim    Não
    Log    ${opt}

Ex3
    Log    log 1
    Pause Execution    
    Log    log 2
