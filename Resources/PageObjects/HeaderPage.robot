*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***
# ${search_text}  robot
# @{search_text} =  books   travel  robot   gifts
# &{search_text}  abc=books   bcd=travel

*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${search_text}
    Input Text  ${HomePageSearchTextBox}  ${search_text}
    Press Keys  ${HomePageSearchButton}  [Return]

Click on Advanced Search Link
    Click Element  ${HomePageAdvancedSearchLink}