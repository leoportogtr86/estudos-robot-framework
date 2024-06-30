*** Settings ***
Library     SeleniumLibrary
Library     .venv/Lib/site-packages/robot/libraries/String.py


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

Converter Para Maiúscula
    [Documentation]    Converte uma string para letras maiúsculas
    [Arguments]    ${string_original}
    ${string_convertida}=    Convert To Upper Case    ${string_original}
    RETURN    ${string_convertida}

Login Cy Play
    [Documentation]    Realiza login na aplicacao de teste cy-play
    [Arguments]    ${user}    ${password}
    Open Browser    url=https://leoportogtr86.github.io/cy-play/authentication.html    browser=chrome
    Input Text    id=username    ${user}
    Input Password    id=password-login    ${password}
    Click Element    css=[value=Login]

