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
    When I enter an invalid username and password    ${username_input_id}    ${invalid_username}    ${password_input_id}    ${invalid_password}
    And I click the login button    ${login_button}
    Then I should see an error message    ${error_message_element}    ${error_message}
