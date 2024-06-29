*** Settings ***
Library     SeleniumLibrary
Resource    ../custom_keyword.robot


*** Test Cases ***
Loga corretamente no site do saucedemo com as credenciais corretas
    [Documentation]    Loga no saucedemo com as credenciais corretas
    Realiza Login no Saucedemo    standard_user    secret_sauce
    Wait Until Element Is Visible    class=bm-burger-button
    Page Should Contain    Products
    [Teardown]    Close Browser

Tenta Logar no site do saucedemo com credenciais incorretas
    [Documentation]    Loga no saucedemo com as credenciais incorretas
    Realiza Login no Saucedemo    standard_user    senha_incorreta
    Page Should Contain    Username and password do not match any user in this service
    [Teardown]    Close Browser
