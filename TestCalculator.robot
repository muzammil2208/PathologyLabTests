*** Settings ***

Library    SeleniumLibrary
Resource    Resources/loginPage.robot
Resource    Resources/setup.robot
Resource    Resources/Dashboard.robot
Test Teardown    Close All Browsers

*** Test Cases ***

TC_CALCULATOR_01
    [Setup]       Setup Browser
    Login with valid credetials






    