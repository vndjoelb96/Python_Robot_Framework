*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Testcase to demonstrate weblocators
    [Documentation]  TC to demonstrate Browser window operation keywords

    Open Browser    http://google.com   Chrome  alias=ChromeRCV
    Input Text      //*[@title="Search"]    http://salesforce.com
    Press Key       //*[@title="Search"]    \\13
    Maximize Browser Window
    Sleep  4s
    Wait Until Element Is Visible  //*[@id="rso"]/div[1]/div/div/div/table/tbody/tr[2]/td/div/div/div/div/h3/a
    Click Link  //*[@id="rso"]/div[1]/div/div/div/table/tbody/tr[2]/td/div/div/div/div/h3/a

    @{Windowhandles}=  Get Window Handles
    Sleep  4s

    @{WindowIdentifier}=  Get Window Identifiers
    Sleep  4s

    @{WindowNames}=  Get Window Names
    Sleep  4s

    Set Window Position  100  200
    ${x}  ${y}=  Get Window Position
    Log  ${x}
    Log  ${y}
    Sleep  4s

    Set Window Size  800  600
    ${width}  ${height}=  Get Window Size
    Log  ${width}
    Log  ${height}
    Sleep  4s

    Switch Window  ${WindowHandles}[0]
    Log  ${WindowHandles}[0]
    Sleep  4s

    Close Window
    Sleep  4s

    Switch Window  ${WindowHandles}[1]
    Close Window




