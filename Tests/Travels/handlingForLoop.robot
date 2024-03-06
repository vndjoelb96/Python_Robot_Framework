*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://google.com
${browser}  chrome

*** Test Cases ***
Testcase to demonstrate weblocators
    [Documentation]  TC to demonstrate how to handle For Loop
    Set Selenium Implicit Wait  5s

    Open Browser  ${url}    ${browser}
    Maximize Browser Window
    Input Text  name:q  RCV Academy
    Press Keys  //div[@class='FPdoLc lJ9FBc']//input[@name='btnK']  Return

    @{results_on_page}=  Get WebElements  xpath://div[@id='center_col']

    FOR  ${element}  IN  @{results_on_page}
        ${text}=  Get Text  ${element}
    END

    Close Browser


