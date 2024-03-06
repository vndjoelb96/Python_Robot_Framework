*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Testcase to demonstrate weblocators
    [Documentation]  TC to demonstrate how to handle Alerts keywords

    Open Browser  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  chrome
    Select Frame  id:iframeResult
    Maximize Browser Window
    Sleep  4s
    Click Button    xpath://button[normalize-space()='Try it']
    Sleep  2s

    Handle Alert    action=ACCEPT   timeout=5 s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_confirm
    Select Frame  id:iframeResult
    Maximize Browser Window
    Click Button    xpath://button[normalize-space()='Try it']
    Sleep  2s
    ${message1}=  Handle Alert  action=ACCEPT   timeout=2 s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt
    Select Frame  id:iframeResult
    Maximize Browser Window
    Click Button    xpath://button[normalize-space()='Try it']
    Input Text Into Alert   VinodJoel
    Sleep  2s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
    Select Frame  id:iframeResult
    Maximize Browser Window
    Click Button    xpath://button[normalize-space()='Try it']
    Alert Should Be Present  text=I am an alert box!  action=ACCEPT
    Sleep  2s

    Close Browser

