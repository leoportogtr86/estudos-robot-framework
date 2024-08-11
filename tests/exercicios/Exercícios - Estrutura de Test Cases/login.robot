*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Realizar Login na Página do Saucedemo
    Open Browser    https://www.saucedemo.com/v1/    chrome
    Maximize Browser Window
    Title Should Be    Swag Labs
    Wait Until Element Is Visible    css=#user-name
    Input Text    css=#user-name    standard_user
    Wait Until Element Is Visible    css=#password
    Input Password    css=#password    secret_sauce
    Click Button    LOGIN
    Location Should Be    https://www.saucedemo.com/v1/inventory.html
    Sleep    5
