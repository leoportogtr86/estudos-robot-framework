*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}=         http://testphp.vulnweb.com/login.php
${USER}=        test
${PASSWORD}=    test


*** Test Cases ***
Ex1
    Open Browser    https://example.com    chrome    options=add_argument("--headless")
    Location Should Be    https://example.com/

Ex2
    Open Browser    ${URL}    chrome
    Input Text    css=[name="uname"]    ${USER}
    Input Text    css=[name="pass"]    ${PASSWORD}
    Click Button    login
    Page Should Contain    hi. this is cybok (test)

Ex3
    Realizar Login    test    test
    Page Should Contain    hi. this is cybok (test)
    Location Should Be    http://testphp.vulnweb.com/userinfo.php

Tentar Logar com credenciais inválidas
    Realizar Login    test123    test123
    Location Should Be    http://testphp.vulnweb.com/login.php


*** Keywords ***
Realizar Login
    [Arguments]    ${username}    ${password}
    Open Browser    http://testphp.vulnweb.com/login.php    chrome
    Input Text    css=[name="uname"]    ${username}
    Input Text    css=[name="pass"]    ${password}
    Click Button    login
