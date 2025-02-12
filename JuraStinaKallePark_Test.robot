*** Settings ***
Documentation    Testing the JuraStinaKallePark Page
Library    SeleniumLibrary
Variables    variables.py
Resource    keywords.robot
Test Setup    I am on the page    ${url}    ${browser}    ${title}
Test Teardown    Close Browser

*** Test Cases ***

Invalid Login
    [Documentation]    Testing an invalid login
    Given I navigated to the login site
    When I enter an invalid username and password    ${username_input_id}    ${invalid_username}    ${password_input_id}    ${invalid_password}
    And I click the login button    ${login_button}
    Then I should see an error message    ${error_message_element}    ${error_message}

Valid Login
    [Documentation]    Testing valid login
    Given I have registered a valid user    ${username_register_input_id}    ${valid_username}    ${password_register_input_id}    ${valid_password}    ${register_button}
    And I navigated to the login site
    When I enter a valid username and password    ${username_input_id}    ${valid_username}    ${password_input_id}    ${valid_password}
    And I click the login button    ${login_button}
    Then I should be logged in   ${buy_tickets_visible}

Register User   
     [Tags]   Wassim
    [Documentation]    Test to register a new user and verify success message.
    ${valid_username2}    Set Variable    Stina-Palle
    ${valid_password2}    Set Variable    Stina4251!
    When I register a user with username  ${username_register_input_id}    ${valid_username2}    ${password_register_input_id}    ${valid_password2}    ${register_button}
    Then I should see the registration success message    ${successful_message_element}    ${successful_message} 

