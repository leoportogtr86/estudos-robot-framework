*** Settings ***
Library    Browser

*** Test Cases ***
Ex0    
    New Browser    browser=chromium    headless=False
    New Page    https://example.com/
    Sleep    5
    ${title}    Get Title
    Should Be Equal    ${title}    Example Domain
    Wait For Elements State    h1    visible
    Get Text    h1    contains    Example Domain
    Take Screenshot

 Ex1
     New Browser    browser=chromium    headless=False 
     New Page    https://www.saucedemo.com/v1/
     Wait For Elements State    id=user-name    visible
     Type Text    id=user-name    standard_user
     Wait For Elements State    id=password    visible
     Type Text    id=password    secret_sauce
     Click    id=login-button
     Get Text    css=.product_label    Equal    Products
     Sleep    5   