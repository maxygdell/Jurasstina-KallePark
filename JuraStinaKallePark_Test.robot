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
    When I enter an invalid username and password    ${username_input_id}    ${invalid_username}    ${password_input_id}    ${invalid_password}
    And I click the login button    ${login_button}
    Then I should see an error message    ${error_message_element}    ${error_message}

Valid Login
    [Tags]    Andreas
    [Documentation]    Testing a valid login
    Given I navigated to the login site
    When I enter a valid username and password    ${username_input_id}    ${valid_username}    ${password_input_id}    ${valid_password}
    And I click the login button    ${login_button}
    Then I should be logged in   ${cart_visible}

Purchase Adult VIP-Tickets
    [Tags]    Martin
    [Documentation]    Testing that you can buy two adult vip-tickets
    Given I Have Logged In With Valid Credentials
    And I Navigate To The Buy Tickets Page
    When I Added Two Adult VIP-tickets To Cart
    Then The Cart Should Be Updated
    And I Can Proceed To Checkout

Purchase Child VIP-Tickets
    [Tags]    Martin
    [Documentation]    Testing that you can buy two child vip-tickets
    Given I Have Logged In With Valid Credentials
    And I Navigate To The Buy Tickets Page
    When I Added Two Child VIP-tickets To Cart
    Then The Cart Should Be Updated
    And I Can Proceed To Checkout

  