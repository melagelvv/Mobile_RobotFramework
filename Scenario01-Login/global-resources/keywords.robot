*** Settings ***
Library  AppiumLibrary
Library  Collections
Library  String
Resource  variables.robot


*** Keywords ***
Open App 
    Open Application    ${APPIUM_SERVER}    &{CAPS}








