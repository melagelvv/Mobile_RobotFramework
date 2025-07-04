*** Settings ***
Library    AppiumLibrary
Library    Collections
Library    String
Resource    variables.robot


*** Keywords ***
Open Inventory And Select Car
    Wait Until Page Contains Element    ${MENU}    15s
    Click Element    ${MENU}
    Wait Until Page Contains Element   ${INVENTORY}    15s
    Click Element    ${INVENTORY}
    Sleep    15s