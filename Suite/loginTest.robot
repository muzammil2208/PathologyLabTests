*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/loginPage.robot
Resource    ../Resources/setup.robot    
Resource    ../Resources/Dashboard.robot
Library      ../utils/apitest.py
Test Teardown    Close All Browsers

*** Test Cases ***

TC_LOGIN_01
    [Setup]    Setup Browser
    Enter valid username
    Enter valid Password
    Click Login Button
    Validate user is able to Login Successfully

TC_LOGIN_02   
    [Setup]    Setup Browser
    Enter invalid username
    Enter invalid Password
    Click Login Button
    Validate Error message is displayed




    