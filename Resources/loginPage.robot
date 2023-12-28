*** Settings ***

Library     SeleniumLibrary


*** Variables ***    

${usernameField}        xpath=//input[@name="email"]
${passwordField}        xpath=//input[@name="password"]
${loginButton}          xpath=//span[text()="Login"]
${errorMsg}             xpath=//div[@class="MuiAlert-message"]
${validUsername}        test@kennect.io
${validPassword}        Qwerty@1234
${invalidUsername}       hello@gmail
${invalidPassowrd}        ehhlsaklf
${errorMessage}    There is no user record corresponding to this identifier. The user may have been deleted.


*** Keywords ***

Enter valid username
    Wait Until Element Is Visible    ${usernameField}    5s
    Input Text    ${usernameField}    ${validUsername}
    
Enter valid Password
    Wait Until Element Is Visible   ${passwordField}    5s
    Input Text    ${passwordField}    ${validPassword}


Click Login Button 
    Wait Until Element Is Visible    ${loginButton}    5s
    Click Element    ${loginButton}

Enter invalid username
    Wait Until Element Is Visible    ${usernameField}    5s
    Input Text    ${usernameField}    ${invalidUsername}
    
Enter invalid Password
    Wait Until Element Is Visible   ${passwordField}    5s
    Input Text    ${passwordField}    ${invalidPassowrd}


Validate Error message is displayed
    Wait Until Element Is Visible    ${errorMsg}    5s
    Element Should Contain    ${errorMsg}     ${errorMessage}  



Login with valid credetials
    [Documentation]     login with valid credentials
    Enter valid username
    Enter valid Password
    Click Login Button