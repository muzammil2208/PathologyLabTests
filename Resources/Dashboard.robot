*** Settings ***

Library     SeleniumLibrary
Library         ExcelUtil
Library        Collections
Resource    ../utils/ExcelLib.robot
Library       ../utils/selection.py

*** Variables ***    

${dashboardLink}    xpath=//span[text()="Dashboard"]
${testCalculatorHeading}    xpath=//div[text()="Test Cost Calculator"]
${testCalculatortestInput}          xpath=//input[@id="patient-test"]
${testsinputs}        xpath=//li[@id="patient-test-option-0"]
${mainDiscountdiv}    xpath=//div[@class="MuiSelect-root MuiSelect-select MuiSelect-selectMenu MuiSelect-outlined MuiInputBase-input MuiOutlinedInput-input"]
${totalAmount}    xpath=//div[@class="MuiBox-root jss78"]
${subtotalAmount}    xpath=//div[@class="MuiBox-root jss75"]


*** Keywords ***
Extract required information from excel
    [Arguments]    ${sheetName}    ${tc_Name}
    ${tesName}     ${discount}    ${subtotal}     ${total}     Read data from Excel    ${sheetName}    ${tc_Name}
    Set Global Variable    ${tesName}
    Set Global Variable    ${discount}
    

Validate user is able to Login Successfully
    [Documentation]     this keyword is use to verify user is able to login Successfully
    Sleep    3s
    Wait Until Element Is Visible    ${dashboardLink}
    Element Should Be Visible    ${dashboardLink}
    Element Text Should Be    ${dashboardLink}    Dashboard

Fill information into tests input
    [Arguments]    ${tName}=${tesName}
    [Documentation]    this keyword is use to enter information into caclculator testsinputs
    Wait Until Element Is Visible    ${testCalculatortestInput}    20s
    @{testnames}    Destructure Names    ${tName}

    

    FOR    ${TESTname}   IN    @{testnames} 
            Input Text          ${testCalculatortestInput}       ${TESTName} 
            Sleep   5s
            Click Element        ${testsinputs}
    END 
    
    Select Discounts    ${discount}
    
   Click Element    
   CLick ELement    //li[@class="MuiButtonBase-root MuiListItem-root MuiMenuItem-root MuiMenuItem-gutters MuiListItem-gutters MuiListItem-button" and @data-value="5"]
    
Select Discounts
    Wait Until Element Is Visible    ${mainDiscountdiv}
    
    
