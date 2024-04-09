*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/loginPage.robot
Resource    ../Resources/setup.robot    # robotcode: ignore
Resource    ../Resources/Dashboard.robot
Library      ../utils/apitest.py
# Test Teardown    Close Browser


*** Test Cases ***

TC_CALCULATOR_01
    [Setup]       Setup Browser
    Login with valid credetials
    Extract required information from excel    tc calculator     TC_CALCULATOR_01_DATA01
    Fill information into tests input    


TC_CALCULATOR_02
    [Setup]       Setup Browser
    Login with valid credetials
    Extract required information from excel    tc calculator     TC_CALCULATOR_01_DATA02
    Fill information into tests input    


TC_API
    ${flag}    Check Api
    Log    ${flag}
   


    

    


    