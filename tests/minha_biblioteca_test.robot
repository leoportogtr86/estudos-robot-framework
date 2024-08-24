*** Settings ***
Library    ../resources/libs/MinhaBiblioteca.py

*** Test Cases ***
Ex1
    ${soma}    Soma Dois Numeros    10    20
    Should Be Equal As Integers    ${soma}    30

Ex2
    ${res}    Subtracao    100    50
    Should Be Equal As Integers    ${res}    50  