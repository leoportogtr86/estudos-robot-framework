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