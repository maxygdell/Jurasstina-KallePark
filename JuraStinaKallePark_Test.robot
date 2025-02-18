*** Settings ***
Documentation    Testing the JuraStinaKallePark Page
Library    SeleniumLibrary
Variables    variables.py
Resource    keywords.robot
Test Setup    Open Page And Register User
Test Teardown    Close Browser

*** Test Cases ***

Invalid Login
    [Tags]    Andreas
    [Documentation]    Testing an invalid login
    Given I navigated to the login site
    When I enter an invalid username and password
    And I click the login button
    Then I should see an error message

Valid Login
    [Tags]    Andreas
    [Documentation]    Testing a valid login
    Given I have registered a valid user
    And I navigated to the login site
    When I enter a valid username and password
    And I click the login button
    Then I should be logged in