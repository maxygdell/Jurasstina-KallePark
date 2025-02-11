*** Settings ***
Documentation    Testing the JuraStinaKallePark Page
Library    SeleniumLibrary
Variables    variables.py
Resource    keywords.robot
Test Setup    I am on the page    ${url}    ${browser}    ${title}
Test Teardown    Close Browser

*** Test Cases ***

Test URL
    Log    ${url}

Test Variables Load
    Log    ${test_variable}