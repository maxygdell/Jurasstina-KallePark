*** Settings ***
Library    SeleniumLibrary
Variables   ${EXECDIR}/util/variables.py
Resource    ${EXECDIR}/resources/keyword_files/Keywords.robot
Resource    ${EXECDIR}/resources/keyword_files/StinaPalle_keywords.robot
Test Setup    Open Browser    ${HTML_PATH}    browser=${browser}    options=--disable-gpu --no-sandbox --disable-dev-shm-usage --remote-debugging-port=9222
Test Teardown    Close Browser

*** Test Cases ***

Register User
    [Tags]   Wassim
    [Documentation]    Test to register a new user and verify success message.
    ${valid_username2}    Set Variable    Stina-Palle
    ${valid_password2}    Set Variable    Stina4251!
    When I register a user with username     ${valid_username2}    ${valid_password2}
    Then I should see the registration success message    ${successful_message_element}    ${successful_message}

Purchase Regular Tickets
    [Tags]    TicketPurchase
    [Documentation]    Test for purchasing one regular tickets.
    Given Iam registered and logged in    
    When I Add one Regular Tickets To Cart      ${ticket_type}    ${ticket_option}    ${ticket_quantity}
   
Book Herbivore Tour
    [Tags]   wassim
    [Documentation]    Testar att logga in och boka "Herbivore Tour".
    Given Iam registered and logged in
    When I Choose Safari Date
    Then I Can go To Checkout

### New testcase to verify if it still fails handle alert

#Book A Herbivore Safari Tour
    #[Tags]    new-feature-video
    #[Documentation]    Kopia av Book Herbivore Tour men omgjord från grunden med nya keywords.
    #Given I Have Navigated To Buy Tickets Page While Logged In
    #When I Add A Regular Ticket And A Safari Tour To Cart
    #Then I Want To Proceed To Checkout