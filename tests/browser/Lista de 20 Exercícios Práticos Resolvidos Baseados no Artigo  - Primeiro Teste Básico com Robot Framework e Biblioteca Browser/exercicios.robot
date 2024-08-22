*** Settings ***
Library    Browser

*** Test Cases ***
Ex1
    New Page    https://www.example.com
    ${title}=    Get Title
    Should Be Equal    ${title}    Example Domain
    Close Browser

Ex2
    New Page    https://www.google.com
    ${title}=    Get Title
    Should Be Equal    ${title}    Google
    Close Browser    

Ex3
    New Page    https://www.example.com
    Get Text    h1    contains    Example Domain
    ${text}    Get Text    css=h1
    Should Be Equal    ${text}    Example Domain
    Close Browser    

Ex4
    New Page    https://www.example.com
    Wait For Elements State    css=h1    visible
    Close Browser    

Ex5
    New Page    https://www.example.com
    Take Screenshot
    Close Browser

Ex6 
    New Page    https://news.ycombinator.com/
    ${title}    Get Title
    Should Be Equal    ${title}    Hacker News

Ex7 
    New Browser    browser=chromium    headless=False
    New Page    https://www.example.com
    Go To    https://www.google.com
    Go Back
    Sleep    5

Ex8
    New Browser    browser=firefox    headless=False
    New Context    
    New Page    https://www.example.com      
    ${title1}    Get Title
    Should Be Equal    ${title1}    Example Domain  
    New Page    https://www.google.com     
    ${title1}    Get Title
    Should Be Equal    ${title1}    Google
    Sleep    5   

Ex9
    New Browser    browser=chromium    headless=False
    New Page    https://www.google.com/
    Fill Text    css=[title="Pesquisar"]    Receita de Bolo de Chocolate
    Press Keys    css=[title="Pesquisar"]    Enter
    Wait For Elements State    xpath=//h3[text()="A melhor receita de bolo de chocolate"]    visible  
    Sleep    5

Ex10
    New Browser    browser=chromium    headless=False
    New Page    https://www.google.com/     
    Wait For Elements State    css=.FPdoLc input[value="Estou com sorte"]    visible    5  
    Click    css=.FPdoLc input[value="Estou com sorte"]
    ${url}    Get Url
    Should Be Equal    ${url}    https://doodles.google/
    Sleep    5
