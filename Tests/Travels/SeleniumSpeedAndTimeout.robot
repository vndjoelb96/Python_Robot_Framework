*** Settings ***
Library  SeleniumLibrary  timeout=10s

*** Variables ***

*** Test Cases ***
Testcase to demonstrate weblocators
    [Documentation]  TC to demonstrate how to handle Timeouts operation keywords
    ${default_selenium_timeout}=  Get Selenium Timeout
    ${default_selenium_speed}=  Get Selenium Speed
    Set Selenium Timeout  15s

    Open Browser    https://www.sugarcrm.com/au/request-demo/   Chrome
    Maximize Browser Window
    Click Button  //*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll"]
    Sleep  4s


