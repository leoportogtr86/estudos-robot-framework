*** Settings ***
Library             SeleniumLibrary

Suite Teardown      Close Browser


*** Variables ***
${URL}      https://www.google.com/


*** Test Cases ***
Deve Realizar uma Pesquisa no Google
    Acessa Página do Google
    Wait Until Element Is Visible    css=[title="Pesquisar"]
    Input Text    css=[title="Pesquisar"]    Robot Framework
    Press Keys    css=[title="Pesquisar"]    ENTER
    Page Should Contain    Robot Framework


*** Keywords ***
Acessa Página do Google
    Open Browser    ${URL}    chrome
