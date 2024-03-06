*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Testcase to demonstrate weblocators
    [Documentation]  TC to demonstrate Radio button operation keywords

    Open Browser    https://www.sugarcrm.com/au/request-demo/   Chrome
    Maximize Browser Window
    Sleep  4s

    Page Should Contain Radio Button    xpath://input[@id='doi0']
    Page Should Not Contain Radio Button    xpath://input[@id='doi000']
    Radio Button Should Not Be Selected  doi
    Select Radio Button  doi  1
    Radio Button Should Be Set To   doi  1
    Close Browser
