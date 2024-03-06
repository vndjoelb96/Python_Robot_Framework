*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Testcase to demonstrate weblocators
    [Documentation]  sample test for WEb locators

    Open Browser  https://ebay.com  chrome
    Maximize Browser Window
    Click Link  partial link:Seller Info
    Sleep  4s
    Close Browser