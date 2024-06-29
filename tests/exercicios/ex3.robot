*** Settings ***
Resource    ../custom_keyword.robot


*** Test Cases ***
Acessar o playground de testes
    [Documentation]    Acessando a página de playground de testes do cypress
    Acessar Playground
