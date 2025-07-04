*** Settings ***
Library  AppiumLibrary
Library  Collections


Resource  ./global-resources/keywords.robot
Resource  ./global-resources/variables.robot


Resource  resources/keywordsCase01.robot
Resource  resources/variablesCase01.robot


Test Setup    Open App
Test Teardown    Close Application


*** Test Cases ***
Login With Valid Credentials
    [Tags]    Login
    Fill Login Fields    ${DEALER_CODE}    ${EMAIL}    ${PASSWORD}
