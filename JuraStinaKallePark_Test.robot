*** Settings ***
Documentation    Testing the JuraStinaKallePark Page
Library    SeleniumLibrary
Variables    variables.py
Resource    keywords.robot
Test Setup    I am on the page    ${url}    ${browser}    ${title}
Test Teardown    Close Browser

*** Test Cases ***

Invalid Login
    Given I navigated to the login site
    When I enter an invalid username and password
    And I click the login button
    Then I should see an error message
