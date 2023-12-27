*** Settings ***
Library     SeleniumLibrary
Library     ExcelLibrary

*** Variables ***
${url}        https://gor-pathology.web.app/


*** Keywords ***

Setup Browser
    [Arguments]     ${browserName}=chrome
    Open Browser    ${url}    ${browserName}
    