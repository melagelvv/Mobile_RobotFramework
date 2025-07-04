*** Settings ***
Library    AppiumLibrary
Library    Collections
Library    String


Resource    ./global-resources/keywords.robot
Resource    ./global-resources/variables.robot


Resource    ./resources/keywordsCase01.2.robot
Resource    ./resources/variablesCase01.2.robot


Test Setup    Open App
Test Teardown    Close Application


*** Test Cases ***
Login With Invalid Credentials
    Fill Login Invalid Fields    ${IDEALER_CODE}    ${IEMAIL}    ${IPASSWORD}