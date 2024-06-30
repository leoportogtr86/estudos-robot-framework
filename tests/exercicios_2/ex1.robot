*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://leoportodevacademico.github.io/compara-projetos/
${BROWSER}      chrome
${TITLE}        Comparar Projetos


*** Test Cases ***
Deve acessar a pagina de comparar projetos
    [Documentation]    Acessa a url corretamente e verifica o titulo correto da pagina
    [Setup]    Open Browser    browser=${BROWSER}    url=${URL}
    Title Should Be    ${TITLE}
    [Teardown]    Close Browser
