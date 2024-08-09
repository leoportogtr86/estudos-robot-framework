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

Sum List
    [Arguments]    ${lista}
    ${soma}=    Set Variable    0
    FOR    ${i}    IN    @{lista}
        ${soma}=    Evaluate    ${soma} + ${i}
    END
    Log    ${soma}
