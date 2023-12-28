*** Settings ***

Library    SeleniumLibrary
Resource    Resources/loginPage.robot
Resource    Resources/setup.robot
Resource    Resources/Dashboard.robot


*** Test Cases ***

TC_CALCULATOR_01
    [Setup]       Setup Browser
    Login with valid credetials
    Fill information into tests input
   

TC_TRIAL
    
    ${testsName}     ${discount}    ${subtotal}    ${total}   Read data from Excel    tc calculator   TC_CALCUALTOR_01_DATA01 
    Log    ${testsName}


    