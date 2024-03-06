*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Testcase to demonstrate weblocators
    [Documentation]  TC to demonstrate how to implicit wait

    ${default_implicit_wait}=  Get Selenium Implicit Wait

    Set Selenium Implicit Wait  20s
    ${custom_implicit_wait}=  Get Selenium Implicit Wait

    Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome
    Click Button  //*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll"]
    Maximize Browser Window

    Scroll Element Into View  (//a[normalize-space()='Why Sugar'])[1]

    Mouse Down  //body/div[@role='document']/footer[contains(@class,'site-main-footer')]/div[@class='container']/div[@class='row']/div[@class='col-xl-9 d-none d-lg-block']/nav[@class='footer-menu-nav']/ul[@id='menu-footer-menu']/li[@id='menu-item-16777']/a[1]

    Mouse Up  //body/div[@role='document']/footer[contains(@class,'site-main-footer')]/div[@class='container']/div[@class='row']/div[@class='col-xl-9 d-none d-lg-block']/nav[@class='footer-menu-nav']/ul[@id='menu-footer-menu']/li[@id='menu-item-16777']/a[1]

    Close Browser
