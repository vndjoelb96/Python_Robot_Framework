*** Settings ***

*** Test Cases ***
Argument demo test1
    Argument demo keyword   Hi  Vinod

Argument demo test2
    Argument demo keyword   Hi  Vinay

*** Keywords ***
Argument demo keyword
    [Arguments]  ${arg1}  ${arg2}
    Log  ${arg1}
    Log  ${arg2}