*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Testcase to demonstrate weblocators
    [Documentation]  TC to demonstrate Browser operation keywords

    Open Browser    http://google.com   Chrome  alias=ChromeRCV
    Maximize Browser Window
    Open Browser    about:blank  ff  alias=RCVFF
    &{alias}    Get Browser Aliases
    Log     ${alias} [0]
    @{browser_ID}  Get Browser Ids
    Log     ${browser_ID} [1]
    Switch Browser  1
    Input Text      //*[@title="Search"]    RCVAcademy
    Sleep  4s
    Switch Browser  2
    Go To   http://salesforce.com
    Close All Browsers