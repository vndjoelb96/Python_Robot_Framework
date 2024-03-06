*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is sample test case
    [Documentation]  Google test
    [Tags]  Regression
    Open Browser  http://google.com  chrome
    Close Browser

*** Keywords ***
