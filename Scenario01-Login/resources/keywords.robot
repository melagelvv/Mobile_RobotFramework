*** Settings ***
Library  AppiumLibrary
Library  Collections
Library  String
Resource  variables.robot

*** Keywords ***

Fill Login Fields
    [Arguments]    ${DEALER_CODE}    ${EMAIL}    ${PASSWORD}
    Wait Until Page Contains Element    ${DEALER_CODE_FIELD}    5s
    Wait Until Page Contains Element    ${EMAIL_FIELD}    5s
    Wait Until Page Contains Element    ${PASSWORD_FIELD}    5s
    Click Element    ${DEALER_CODE_FIELD}
    Input Text    ${DEALER_CODE_FIELD}    ${DEALER_CODE}
    Click Element    ${EMAIL_FIELD}
    Input Text    ${EMAIL_FIELD}    ${EMAIL}
    Click Element    ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Sleep    10s