*** Settings ***

Library     SeleniumLibrary
Library         ExcelUtil
Library    Collections



*** Keywords ***


Read data from Excel
    [Arguments]    ${sheetName}   ${tc_Name}          
    Open Excel	     TestData/TestData.xlsx
    ${rowCount}    Get Row Count    ${sheetName}
    Log    ${rowCount}
    ${columnCount}    Get Column Count    ${sheetName}
    FOR     ${rowIndex}    IN RANGE    2    ${rowCount}
        ${tcN}    Read Cell Data By Coordinates   ${sheetName}      ${rowIndex}    1  
        Log   calculated ${tcN} atual ${tc_Name}
        IF    '${tc_Name}'=='${tcN}'
             ${tname}     ${dis}     ${subt}     ${tot}   Get all row information   ${sheetName}    ${rowIndex}   ${columnCount}
        END
    END
   
    [return]      ${tname}     ${dis}     ${subt}     ${tot} 
    # Reading No of Columns in Excel Sheet

Get all row information
    [Arguments]    ${sheetName}     ${rowIndex}       ${ColumnCount}
    [Documentation]      this is to extract all row information
    ${TestsName}    Read Cell Data By Coordinates    ${sheetName}   ${rowIndex}     2    
    ${discount}    Read Cell Data By Coordinates    ${sheetName}     ${rowIndex}       3     
    ${subtotal}    Read Cell Data By Coordinates    ${sheetName}      ${rowIndex}      4        
    ${total}    Read Cell Data By Coordinates    ${sheetName}          ${rowIndex}      5     
    [return]        ${TestsName}    ${discount}    ${subtotal}    ${total}