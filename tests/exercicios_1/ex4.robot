*** Settings ***
Library     SeleniumLibrary
Resource    ../custom_keyword.robot


*** Variables ***
${GOOGLE_URL}       https://www.google.com/
${TITLE}            Google


*** Test Cases ***
Verifica o título do site do google
    [Documentation]    Verifica se o título do site do Google está correto
    Verificar título de página    ${GOOGLE_URL}    ${TITLE}
