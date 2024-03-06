*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Testcase to demonstrate weblocators
    [Documentation]  TC to demonstrate how to handle Mouse operation keywords

    Open Browser    https://www.sugarcrm.com/au/request-demo/   Chrome
    Maximize Browser Window
    Click Button  //*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll"]
    Sleep  4s

    Scroll Element Into View    xpath://input[@value='Request a Demo']

    Mouse Down  //input[@placeholder='Business Email*']
    Sleep  2s
    Mouse Up  //input[@placeholder='Business Email*']
    Sleep  2s

    Scroll Element Into View  //*[@id="menu-item-24402"]/a
    Sleep  2s

    Mouse Down On Link  //*[@id="menu-item-24402"]/a
    Sleep  2s

    Mouse Over  //*[@id="menu-item-20422"]/a
    Sleep  2s

    Mouse Out  //*[@id="menu-item-20422"]/a
    Sleep  2s

    Mouse Down On Image  //*[@id="main"]/div/div/div[4]/div/div/div/div[1]/div/img
    Sleep  2s

    Go To   https://demoqa.com/droppable/
    Drag And Drop  //div[@id='draggable']  //div[@id='simpleDropContainer']//p[contains(text(),'Drop here')]
    Sleep  4s

    Open Context Menu  //a[@id='droppableExample-tab-revertable']
    Sleep  4s

    Close Browser