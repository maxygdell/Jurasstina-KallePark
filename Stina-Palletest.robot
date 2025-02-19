*** Settings ***
Documentation    Testing the JuraStinaKallePark Page
Library    SeleniumLibrary
Variables    variables.py
Resource    keywords.robot
Test Setup    I am on the page    ${url}    ${browser}    ${title}
Test Teardown    Close Browser


*** Test Cases ***

Register User   
     [Tags]   Wassim
    [Documentation]    Test to register a new user and verify success message.
    ${valid_username2}    Set Variable    Stina-Palle
    ${valid_password2}    Set Variable    Stina4251!
    When I register a user with username  ${username_register_input_id}    ${valid_username2}    ${password_register_input_id}    ${valid_password2}    ${register_button}
    Then I should see the registration success message    ${successful_message_element}    ${successful_message} 

