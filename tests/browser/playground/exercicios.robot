*** Settings ***
Library    Browser


*** Test Cases ***
Ex1    
    Start Session
    ${title}    Get Title
    Should Be Equal    ${title}    Página de Prática de Testes

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

Ex4    
    Start Session
    Select Options By    id=country    value    BR
        
Ex5
    Start Session
    Fill Text    id=comments    Esse é um comentário de teste.
    ${comentario}    Get Text    id=comments 
    Should Be Equal    ${comentario}    Esse é um comentário de teste.

Ex6
    Start Session
    Fill Text    id=username    TesteUsuario
    ${username_digitado}    Get Text    id=username
    Fill Text    id=password    123456
    ${password_digitado}    Get Text    id=password
    Fill Text    id=comments    Esse é um comentário de teste.
    ${comentario}    Get Text    id=comments
    Click    id=submitBtn
    Wait For Elements State    id=message    visible    5
    Get Text    id=message    Equal    Formulário enviado com sucesso!
    Sleep    5



*** Keywords ***
Start Session        
    New Browser    browser=chromium    headless=False 
    New Page    http://127.0.0.1:5500/tests/browser/playground/index.html