*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Preencher e submeter o formulário
    Open Browser    http://127.0.0.1:5500/contato.html    chrome
    Maximize Browser Window
    Location Should Be    http://127.0.0.1:5500/contato.html
    Page Should Contain    Contato
    Wait Until Element Is Visible    css=#name
    Input Text    css=#name    Bob
    Wait Until Element Is Visible    css=#email
    Input Text    css=#email    bob@email.com
    Wait Until Element Is Visible    css=#message
    Input Text    css=#message    Bom dia!
    Wait Until Element Is Visible    css=[type="submit"]
    Click Button    css=[type="submit"]
    Page Should Contain    Mensagem enviada com sucesso!
    Sleep    5
