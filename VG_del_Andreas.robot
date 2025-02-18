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

Non VIP User Cannot Book Weekend Safari
    [Tags]    Andreas
    [Documentation]    Verify that users without VIP tickets cannot book safari tours on weekends
    Given I have registered a valid user
    And I Have Logged In With Valid Credentials
    And I Navigate To The Buy Tickets Page
    And I Added Two Regular Adult Tickets To Cart
    When I Navigate To The Book Safaris Page
    And I Add The VIP Safari Tours
    Then I Should See Safari Access Denied Message

Non VIP User Cannot Book Exclusive Tours
    [Tags]    Andreas
    [Documentation]    Verify that users without VIP tickets cannot book exclusive safari tours
    Given I Have Logged In With Valid Credentials
    And I Navigate To The Buy Tickets Page
    And I Added Two Regular Adult Tickets To Cart
    When I Navigate To The Book Safaris Page
    And I Add The VIP Safari Tours
    Then I Should See Safari Access Denied Message