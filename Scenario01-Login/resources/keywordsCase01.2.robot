*** Settings ***
Library    AppiumLibrary
Library    Collections
Library    String


Resource    variablesCase01.2.robot


*** Keywords ***
Fill Login Invalid Fields
    [Arguments]    ${IDEALER_CODE}    ${IEMAIL}    ${IPASSWORD}
    Wait Until Page Contains Element    ${DEALER_CODE_FIELD}    15s
    Wait Until Page Contains Element    ${EMAIL_FIELD}    15s
    Wait Until Page Contains Element    ${PASSWORD_FIELD}    15s
    Click Element    ${DEALER_CODE_FIELD}
    Input Text    ${DEALER_CODE_FIELD}    ${IDEALER_CODE}
    Click Element    ${EMAIL_FIELD}
    Input Text    ${EMAIL_FIELD}    ${IEMAIL}
    Click Element    ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${IPASSWORD}
    Click Element    ${LOGIN_BUTTON}   
    Sleep    20s