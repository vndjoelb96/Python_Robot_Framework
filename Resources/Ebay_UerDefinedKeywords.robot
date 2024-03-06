*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    Input Text  //*[@aria-label='Search for anything']  mobile
    Press Keys  //input[@id='gh-btn']  [Return]
    Page Should Contain  results for mobile

Filter results by condition
    Mouse Over  //span[@id='nid-ggc-3']
    Sleep  3s
    Select Checkbox  //a/span/span/span[contains(text(),'New')]

Verify filter results
    Page Should Contain  New
