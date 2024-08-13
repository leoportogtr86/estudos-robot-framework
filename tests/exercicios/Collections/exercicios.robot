*** Settings ***
Library     Collections


*** Test Cases ***
Ex1
    ${lista}=    Create List    1    2    3    4    5    6
    List Should Contain Value    ${lista}    6

Ex2
    ${lista}=    Create List    1    2
    Append To List    ${lista}    3
    ${lista_len}=    Get Length    ${lista}
    Should Be Equal As Integers    ${lista_len}    3

Ex3
    ${nomes}=    Create List    Leonardo    Joe    Bob    Marla
    Remove From List    ${nomes}    1
    Log To Console    ${nomes}
