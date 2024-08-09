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


*** Keywords ***
Log Hello World
    Log    Hello, World!

Log Message
    [Arguments]    ${msg}
    Log    ${msg}

Sum Numbers
    [Arguments]    ${num1}    ${num2}
    ${soma}=    Evaluate    ${num1} + ${num2}
    Log    Soma: ${soma}

Greet and Sum
    Log Hello World
    Sum Numbers    50    150

Get Greeting
    RETURN    Hello, Robot Framework!

Check Even Number
    [Arguments]    ${num}
    IF    ${num} % 2 == 0    Log    Par    ELSE    Log    Ímpar

Log Numbers
    FOR    ${i}    IN RANGE    1    6
        Log    ${i}
    END
