*** Settings ***
Library    ../resources/libs/MinhaBiblioteca.py
Library    ../resources/libs/my_lib.py

*** Test Cases ***
Ex1
    ${soma}    Soma Dois Numeros    10    20
    Should Be Equal As Integers    ${soma}    30