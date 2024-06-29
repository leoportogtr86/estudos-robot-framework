*** Settings ***
Resource    ../custom_keyword.robot


*** Variables ***
${STRING_ORIGINAL}      leonardo


*** Test Cases ***
Converte uma string normal em maiúscula
    [Documentation]    Verifica a conversão correta de uma string para sua versão maiúscula
    ${RESULTADO}=    Converter Para Maiúscula    ${STRING_ORIGINAL}
    Should Be Equal    ${RESULTADO}    LEONARDO
