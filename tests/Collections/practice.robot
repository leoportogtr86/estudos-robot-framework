*** Settings ***
Library     Collections


*** Test Cases ***
Praticando a lib collections
    @{frutas}    Create List    manga    caju    limão    cacau
    Log    ${frutas}
    Append To List    ${frutas}    laranja
    Log    ${frutas}
    ${fruta}    Get From List    ${frutas}    2
    Log    ${fruta}
