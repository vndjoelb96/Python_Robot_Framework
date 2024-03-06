*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  chrome

*** Test Cases ***
Testcase to demonstrate weblocators
    [Documentation]  TC to demonstrate how to use  IF/_ELSE keywords

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  name:user-name  standard_user
    Input Text  id:password  secret_sauce
    Click Button  xpath://input[@id='login-button']

    ${items_on_page}=  Get Element Count  //div[@class='inventory_list']/div

    Run Keyword If  ${items_on_page} == 10  Test Keyword 1
    ...  ELSE IF  ${items_on_page} < 10 and ${items_on_page} > 6  Test Keyword 2
    ...  ELSE  Test Keyword 3

*** Keywords ***
Test Keyword 1
    Log To Console  Executed Keyword1 - Found Items as expected
    Close Browser
Test Keyword 2
    Log To Console  Executed Keyword2 - Found Less than expected items
    Close Browser
Test Keyword 3
    Log To Console  Executed Keyword3 - Exception
    Close Browser