*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Deve gerar um protocolo de abertura de matriz
    Open Browser    https://homologacao.redesim.pb.gov.br/    chrome
    Wait Until Element Is Visible    css=.cookie-lgpd__btn-cookie
    Click Element    css=.cookie-lgpd__btn-cookie
    Sleep    5
    Click Element    id=menu-abertura-de-empresa
    Wait Until Element Is Visible    id=botao-abertura-de-matriz-open
    Click Element    id=botao-abertura-de-matriz-open
    Wait Until Element Is Visible    css=[for="solicitacao_perfil_104306"]
    Select Radio Button    solicitacao[perfil]    104306
    Sleep    10

