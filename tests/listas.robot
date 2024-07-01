*** Settings ***
Library     Collections


*** Test Cases ***
Criar e adicionar itens a uma lista
    ${list}    Create List
    Append To List    ${list}    manga
    Append To List    ${list}    maçã
    Append To List    ${list}    uva
    Append To List    ${list}    melão

    Log    ${list}

Acessando itens da lista
    ${list}    Create List
    Append To List    ${list}    0
    Append To List    ${list}    1
    Append To List    ${list}    2
    Append To List    ${list}    3
    Append To List    ${list}    4
    Append To List    ${list}    5
    ${item1}    Get From List    ${list}    0
    ${item2}    Get From List    ${list}    1
    ${item3}    Get From List    ${list}    2
    ${item4}    Get From List    ${list}    3
    ${item5}    Get From List    ${list}    4
    Log    ${item1}
    Log    ${item2}
    Log    ${item3}
    Log    ${item4}
    Log    ${item5}
