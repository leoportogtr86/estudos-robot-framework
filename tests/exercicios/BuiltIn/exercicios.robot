*** Variables ***
${X}=       ${100}


*** Test Cases ***
Ex1
    Should Be Equal    10    10

Ex2
    IF    ${X} == 100    Log To Console    X é igual a 100

Ex3
    Run Keywords
    ...    Log To Console    log 1${\n}
    ...    AND
    ...    Log To Console    log 2${\n}
    ...    AND
    ...    Log To Console    log 3${\n}
    ...

Ex4
    Set Test Variable    ${NOME}    Leonardo
    Should Be Equal    ${NOME}    Leonardo

Ex5
    Fail    Deu ruim...

Ex6
    Set Test Variable    ${VAR}    abcdefg
    ${COMPRIMENTO}=    Get Length    ${VAR}
    Should Be Equal    ${COMPRIMENTO}    ${7}

Ex7
    Set Test Variable    ${DADO}    ${10}
    ${DADO_CONVERTIDO}=    Convert To String    ${DADO}
    Should Be Equal    ${DADO_CONVERTIDO}    10
