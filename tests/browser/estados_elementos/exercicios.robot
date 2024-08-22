*** Settings ***
Library    Browser


*** Test Cases ***
Ex1
    Start Session
    ${title}    Get Title
    Should Be Equal    ${title}    Página de Prática de Estados de Elementos

Ex2
    Start Session
    Wait For Elements State    id=dynamicBtn    enabled    5
    Click    id=dynamicBtn


*** Keywords ***
Start Session
    New Browser    browser=chromium    headless=False 
    New Page    http://127.0.0.1:5500/tests/browser/playground/estados_elementos.html
    Sleep    3