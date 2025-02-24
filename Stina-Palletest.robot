*** Settings ***
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
    When I register a user with username     ${valid_username2}  ${valid_password2}
    Then I should see the registration success message    ${successful_message_element}    ${successful_message}

Purchase Regular Tickets
    [Tags]    TicketPurchase
    [Documentation]    Test for purchasing one regular tickets.
    Given Iam registered and logged in    
    When I Add one Regular Tickets To Cart      ${ticket_type}  ${ticket_option}  ${ticket_quantity}
   

Book Herbivore Tour
    [Tags]   wassim
    [Documentation]    Testar att logga in och boka "Herbivore Tour".
    Given Iam registered and logged in 
    and i Select Herbivore Tour safari      ${safari_type}
    When i Choose Safari Date                 ${safari_date}
    And I add the tours to cart     
    then I Can Proceed To Checkout

