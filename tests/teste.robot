*** Settings ***
Documentation       Meus primeiros testes com robot framework

Library             SeleniumLibrary

Test Setup          Open Browser    ${URL}    chrome
Test Teardown       Close Browser


*** Variables ***
${URL}      https://leoportogtr86.github.io/cy-play/


*** Test Cases ***
Teste do Título da Página
    [Documentation]    Verifica o Título da Página
    [Tags]    titulo
    Title Should Be    Cypress Playground - Automação VOX
