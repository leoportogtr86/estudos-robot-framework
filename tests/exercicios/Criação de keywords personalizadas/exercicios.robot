*** Settings ***
Resource    my_keywords.robot


*** Test Cases ***
Ex1
    [Tags]    ex1
    Log Hello World

Ex2
    [Tags]    ex2
    Log Message    Olá, mundo!

Ex3
    [Tags]    ex3
    Sum Numbers    10    20

Ex4
    [Tags]    ex4
    Greet and Sum

Ex5
    [Tags]    ex5
    ${msg}=    Get Greeting
    Log    ${msg}

Ex6
    [Tags]    ex6
    Check Even Number    25

Ex7
    [Tags]    ex7
    Log Numbers

Ex8
    [Tags]    ex8
    ${lista}=    Create List    1    2    3    4    5
    Sum List    ${lista}
