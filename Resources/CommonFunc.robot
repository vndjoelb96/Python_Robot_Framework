*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# ${env}  dev
# &{url}  qa=http://demo.qa.com   uat=http://uat.demo.com  dev=http://dev.qa.com
${url}  https://ebay.com
${browser}  chrome

*** Keywords ***
Start TestCase
    #Open Browser  ${url.${env}}  chrome
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Sleep   4s

Finish TestCase
    Close Browser