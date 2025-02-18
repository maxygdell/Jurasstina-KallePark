*** Settings ***
Documentation    Andreas VG-del 
Library    SeleniumLibrary
Variables    variables.py
Resource    keywords.robot
Test Setup    I am on the page    ${url}    ${browser}    ${title}
Test Teardown    Close Browser

*** Test Cases ***

Unique Username
    [Documentation]    Testing that usernames should be unique
    Given I have registered a valid user
    When I want to register the same user
    Then I should see an failed to register message

Password Length Failure
    [Tags]    Andreas
    [Documentation]    Testing password length requirements
    Given I am on the registration page
    When I want to register a user using the wrong password length
    Then I should see an invalid password message