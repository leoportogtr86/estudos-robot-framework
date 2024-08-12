*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://google.com
${BROWSER}      chrome
${TIME_WAIT}    5


*** Keywords ***
Abrir Navegador
    Open Browser    ${URL}    ${BROWSER}

Fechar Navegador
    Close Browser
