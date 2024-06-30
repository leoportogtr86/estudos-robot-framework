*** Settings ***
Documentation       Exercicios sobre criacao de casos de testes em robot framework

Library             SeleniumLibrary
Resource            ../custom_keyword.robot


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

Deve logar corretamente na aplicacao cy-play
    [Documentation]    Testa o login na aplicacao cy-play
    Login Cy Play    admin    password123
    Page Should Contain    Login realizado com sucesso!

Deve exibir uma mensagem de erro ao tentar logar com credenciais incorretas no cy-play
    [Documentation]    Testa o login com credenciais incorretas na aplicacao cy-play
    Login Cy Play    admin    123
    Page Should Contain    Usuário ou senha incorretos!
