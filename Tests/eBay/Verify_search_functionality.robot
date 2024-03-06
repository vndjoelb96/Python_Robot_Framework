*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunc.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunc.Start TestCase
Test Teardown  CommonFunc.Finish TestCase

*** Test Cases ***
Verify Basic Search Functionality for Ebay
    [Documentation]  This testcase verifies basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search   robot
    SearchResultsPage.Verify Search Results  robot


#Verify Advanced Search Functionality
  #  [Documentation]  This testcase verifies advanced search
#[Tags]  Functional

  #  HeaderPage.Click on Advanced Search Link
