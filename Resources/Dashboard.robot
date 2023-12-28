*** Settings ***

Library     SeleniumLibrary
Library         ExcelUtil
Library        Collections
Resource    ../utils/ExcelLib.robot

*** Variables ***    

${dashboardLink}    xpath=//span[text()="Dashboard"]
${testCalculatorHeading}    xpath=//div[text()="Test Cost Calculator"]
${testCalculatortestInput}          xpath=//input[@id="patient-test"]
${testsinputs}        xpath=//li[@id="patient-test-option-0"]
${discountinput}    xpath=//input[@class="MuiSelect-nativeInput"]
${totalAmount}    xpath=//div[@class="MuiBox-root jss78"]
${subtotalAmount}    xpath=//div[@class="MuiBox-root jss75"]


*** Keywords ***

Validate user is able to Login Successfully
    [Documentation]     this keyword is use to verify user is able to login Successfully
    Sleep    3s
    Wait Until Element Is Visible    ${dashboardLink}
    Element Should Be Visible    ${dashboardLink}
    Element Text Should Be    ${dashboardLink}    Dashboard

Fill information into tests input
    [Documentation]    this keyword is use to enter information into caclculator testsinputs
    Wait Until Element Is Visible    ${testCalculatortestInput}
    Input Text          ${testCalculatortestInput}   AFP    
    Sleep   5s
    Click Element        ${testsinputs}

