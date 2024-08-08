*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}      https://www.google.com/


*** Test Cases ***
Deve Realizar uma Pesquisa no Google
    Acessa Página do Google
    Input Text    css=[title="Pesquisar"]    Robot Framework
    Press Keys    css=[title="Pesquisar"]    ENTER


*** Keywords ***
Acessa Página do Google
    Open Browser    ${URL}    chrome
