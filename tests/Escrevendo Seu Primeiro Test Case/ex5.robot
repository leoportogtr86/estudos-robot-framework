*** Settings ***
Documentation       Este é um teste de exemplo para verificar o título da página

Library             SeleniumLibrary

Suite Setup         Abrir Navegador
Suite Teardown      Fechar Navegador


*** Variables ***
${URL}      https://www.google.com/


*** Test Cases ***
Verificar Título da Página
    ${titulo} =    Get Title
    Title Should Be    Google


*** Keywords ***
Abrir Navegador
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Window Size    1920    1080

Fechar Navegador
    Close Browser
