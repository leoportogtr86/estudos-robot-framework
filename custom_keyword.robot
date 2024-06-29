*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Imprimir Olá Mundo
    [Documentation]    Imprime "Olá, mundo!" no console
    Log    Olá, mundo!

Acessar Playground
    [Documentation]    Acessa a página de cypress Playground
    Open Browser    https://leoportogtr86.github.io/cy-play/    chrome
    Close Browser
