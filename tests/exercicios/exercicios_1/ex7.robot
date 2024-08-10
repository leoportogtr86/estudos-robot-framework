*** Settings ***
Resource    ../custom_keyword.robot


*** Test Cases ***
Verifica o acesso correto ao cy Play
    Verifica titulo do cy play
    Page Should Contain    Bem-vindo ao Cypress Playground
