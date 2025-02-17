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
    Given I have registered a valid user    ${username_register_input_id}    ${valid_username}    ${password_register_input_id}    ${valid_password}    ${register_button}
    When I want to register the same user    ${username_register_input_id}    ${valid_username}    ${password_register_input_id}    ${valid_password}    ${register_button}
    Then I should see an failed to register message    ${error_message_register_element}    ${error_message_register}

Password Length
    [Tags]    Andreas
    [Documentation]    Testing password length requirements
    Given I am on the registration page
    When I want to register a user using the wrong password length    ${username_register_input_id}    ${valid_username}    ${password_register_input_id}    ${register_button}
    Then I should see an invalid password message    ${error_message_register_element}    ${error_message_password_register}