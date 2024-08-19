*** Settings ***
Library    Browser


*** Test Cases ***
Ex1    
    Start Session
    ${title}    Get Title
    Should Be Equal    ${title}    Página de Prática de Testes
    Sleep    5

Ex2
    Start Session
    Wait For Elements State    id=username    visible
    Fill Text    id=username    TesteUsuario
    ${username_digitado}    Get Text    id=username
    Should Be Equal    ${username_digitado}    TesteUsuario

Ex3
    Start Session
    Wait For Elements State    id=password    visible
    Fill Text    id=password    123456
    ${password_digitado}    Get Text    id=password
    Should Be Equal    ${password_digitado}    123456
    Sleep    5

Ex4    
    Start Session
    Select Options By    id=country    value    BR
    Sleep    5
        

*** Keywords ***
Start Session        
    New Browser    browser=chromium    headless=False 
    New Page    http://127.0.0.1:5500/tests/browser/playground/index.html