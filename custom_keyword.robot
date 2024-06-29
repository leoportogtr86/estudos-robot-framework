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

Verificar título de página
    [Documentation]    Abre o navegador na url especificada e checa se o valor do título corresponde ao valor correto
    [Arguments]    ${url}    ${title}
    Open Browser    ${url}    chrome
    Title Should Be    ${title}
    Close Browser

Realiza Login no Saucedemo
    [Documentation]    Loga no site https://www.saucedemo.com/v1/
    [Arguments]    ${usuario}    ${senha}
    Open Browser    https://www.saucedemo.com/v1/    chrome
    Input Text    id=user-name    ${usuario}
    Input Password    id=password    ${senha}
    Click Button    id=login-button
