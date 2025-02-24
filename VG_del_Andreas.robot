*** Settings ***
Documentation    Andreas VG-del 
Library    SeleniumLibrary
Variables    variables.py
Resource    keywords.robot
Test Setup    I Am On The Page    ${url}    ${browser}    ${title}
Test Teardown    Close Browser

*** Test Cases ***

Unique Username
    [Documentation]    Testing that usernames should be unique
    Given I Have Registered A Valid User
    When I Want To Register The Same User
    Then I Should See An Failed To Register Message

Password Length Failure
    [Tags]    Andreas
    [Documentation]    Testing password length requirements
    Given I Am On The Registration Page
    When I Want To Register A User Using The Wrong Password Length
    Then I Should See An Invalid Password Message

Non VIP User Cannot Book Weekend Safari
    [Tags]    Andreas
    [Documentation]    Verify that users without VIP tickets cannot book safari tours on weekends
    Given I Have Logged In And Booked The Regular Tickets
    When I Navigate To The Book Safaris Page
    And I Book Tours On The Weekend
    Then I Should See A Cannot Book On Weekend Message

Non VIP User Cannot Book Exclusive Tours
    [Tags]    Andreas
    [Documentation]    Verify that users without VIP tickets cannot book exclusive safari tours
    Given I Have Logged In And Booked The Regular Tickets
    When I Navigate To The Book Safaris Page
    And I Add The VIP Safari Tours
    Then I Should See Safari Access Denied Message