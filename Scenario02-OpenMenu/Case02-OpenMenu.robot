*** Settings ***
Library    AppiumLibrary
Library    Collections
Library    String


Resource    ./resources/variables.robot
Resource    ./resources/keywords.robot


Resource    ../Scenario01-Login/global-resources/keywords.robot
Resource    ../Scenario01-Login/global-resources/variables.robot
Resource    ../Scenario01-Login/resources/keywords.robot
Resource    ../Scenario01-Login/resources/variables.robot
Resource    ../Scenario01-Login/Case01-Login.robot

Test Setup    Open App
Test Teardown    Close Application


*** Test Cases ***
Login And Open Menu
    Fill Login Fields    ${DEALER_CODE}    ${EMAIL}    ${PASSWORD}
    Open Inventory And Select Car    