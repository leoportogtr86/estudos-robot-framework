*** Settings ***
Resource    ../custom_keyword.robot


*** Test Cases ***
Deve conter o tamanho correto da lista informada
    ${lista}=    Create List    1    2    3    4    5
    ${size}    Tamanho Lista    ${lista}
    Should Be Equal    ${size}    ${5}
