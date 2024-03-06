*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Testcase to demonstrate weblocators
    [Documentation]  TC to demonstrate how to handle frames operation keywords

    Open Browser    https://www.w3schools.com/js/tryit.asp?filename=tryjs_myfirst   chrome
    Maximize Browser Window
    Sleep  4s

    Select Frame    id:iframeResult
    Current Frame Should Contain    My First JavaScript
    Current Frame Should Not Contain    My First JavaScript123
    Unselect Frame
    Frame Should Contain    id:iframeResult  My First JavaScript

    Close Browser
