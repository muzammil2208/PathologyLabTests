*** Settings ***
Library     SeleniumLibrary
Library     ExcelLibrary

*** Variables ***
${url}        https://gor-pathology.web.app/


*** Keywords ***

Setup Browser
    [Arguments]     ${browserName}=headlesschrome
    Open Browser    ${url}    ${browserName}
    Set Selenium Implicit Wait        10s
