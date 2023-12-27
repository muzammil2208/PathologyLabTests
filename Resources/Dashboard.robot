*** Settings ***
Library     SeleniumLibrary


*** Variables ***    

${dashboardLink}    xpath=//span[text()="Dashboard"]
${testCalculatorHeading}    xpath=//div[text()="Test Cost Calculator"]
${testCalculatortestInput}    xpath=//input[@id="patient-test"]
${testsinputs}        //input[@class="jss210"]
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


