*** Settings ***
Resource    my_keywords.robot


*** Test Cases ***
Ex1
    Log Hello World

Ex2
    Log Message    Olá, mundo!

Ex3
    Sum Numbers    10    20

Ex4
    Greet and Sum

Ex5
    ${msg}=    Get Greeting
    Log    ${msg}

Ex6
    Check Even Number    25

Ex7
    Log Numbers

Ex8
    ${lista}=    Create List    1    2    3    4    5
    Sum List    ${lista}
