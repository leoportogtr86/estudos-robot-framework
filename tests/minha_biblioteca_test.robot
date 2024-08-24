*** Settings ***
Library    ../resources/libs/MinhaBiblioteca.py

*** Test Cases ***
Ex1
    ${soma}    Soma Dois Numeros    10    20
    Should Be Equal As Integers    ${soma}    30

Ex2
    ${res}    Subtracao    100    50
    Should Be Equal As Integers    ${res}    50  

Ex3
    ${res}    Multiplica Com Fator Opcional    10    20    2
    Log To Console    ${res}

Ex4
    ${lista}    Obtem Lista
    FOR    ${element}    IN    @{lista}
        Log   ${element}
        
    END    

Ex5
    Checks Positivo    10    
    Checks Positivo    ${-10}    