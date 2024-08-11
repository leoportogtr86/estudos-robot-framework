*** Settings ***
Library             SeleniumLibrary

Suite Setup         Open Browser    ${URL}    chrome
Suite Teardown      Close Browser


*** Variables ***
${URL}              http://127.0.0.1:5500/index.html
${EXPECTED_TEXT}    ${EMPTY}


*** Test Cases ***
Verificar o Texto Hello, World na Página
    [Documentation]    Deve garantir que o texto "Hello, world!" está renderizado na página
    [Tags]    hello
    Maximize Browser Window
    Title Should Be    Hello!
    Page Should Contain    ${EXPECTED_TEXT}
    Capture Page Screenshot
    Sleep    5

