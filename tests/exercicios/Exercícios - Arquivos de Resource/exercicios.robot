*** Settings ***
Resource    exercicios.resource
Resource    variables/variaveis.resource
Resource    keywords/keywords.resource
Library     SeleniumLibrary


*** Test Cases ***
Visitar Página do Google
    Abrir Navegador
    Sleep    ${TIME_WAIT}
    Fechar Navegador

Usar Variáveis e Keywords de Arquivos Externos
    Hello    ${MSG}
