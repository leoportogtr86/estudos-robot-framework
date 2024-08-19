*** Settings ***
Library    Browser


*** Test Cases ***
Ex1    
    New Browser    browser=chromium    headless=False
    New Page    http://127.0.0.1:5500/tests/browser/playground/index.html
    ${title}    Get Title
    Should Be Equal    ${title}    Página de Prática de Testes
    Sleep    5

Ex2
    New Browser    browser=chromium    headless=False
    New Page    http://127.0.0.1:5500/tests/browser/playground/index.html
    Wait For Elements State    id=username    visible
    Fill Text    id=username    TesteUsuario
    ${valor_digitado}    Get Text    id=username
    Should Be Equal    ${valor_digitado}    TesteUsuario