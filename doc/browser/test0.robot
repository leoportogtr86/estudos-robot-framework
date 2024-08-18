*** Settings ***
Library    Browser

*** Test Cases ***
Ex0    
    New Browser    browser=chromium    headless=False
    New Page    https://example.com/
    Sleep    5
    ${title}    Get Title
    Should Be Equal    ${title}    Example Domain
    Get Text    h1    contains    Example Domain