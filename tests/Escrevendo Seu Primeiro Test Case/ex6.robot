*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}      https://www.google.com/


*** Test Cases ***
Teste de Acesso ao Google
    Visita a Página do Google


*** Keywords ***
Visita a Página do Google
    Open Browser    ${URL}    chrome
