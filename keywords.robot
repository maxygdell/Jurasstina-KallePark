*** Settings ***
Library    SeleniumLibrary
Variables    variables.py

*** Keywords ***

Type In Element
    [Tags]    Andreas
    [Arguments]    ${id_element}    ${text_to_write}
    Input Text    ${id_element}    ${text_to_write}

I am on the page
    [Tags]    Andreas
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Title Should Be    ${title}

I navigated to the login site
    [Tags]    Andreas
    Execute JavaScript    document.getElementById('login-section').style.display = 'block'

I enter an invalid username and password
    [Tags]    Andreas
    Type In Element    ${username_input_id}    ${invalid_username}
    Type In Element    ${password_input_id}    ${invalid_password}

I click the login button
    [Tags]    Andreas
    Click Button    ${login_button}

I should see an error message
    [Tags]    Andreas

    Wait Until Element Is Visible    ${error_message_element}
    Wait Until Element Contains    ${error_message_element}    ${error_message}

I enter a valid username and password
    [Tags]    Andreas
    Type In Element    ${username_input_id}    ${valid_username}
    Type In Element    ${password_input_id}    ${valid_password}

I should be logged in
    [Tags]    Andreas
    Wait Until Element Is Visible    ${cart_visible}

I have registered a valid user
    [Tags]    Andreas
    Execute Javascript    document.getElementById('register-section').style.display = 'block'
    Type In Element    ${username_register_input_id}    ${valid_username}
    Type In Element    ${password_register_input_id}    ${valid_password}
    Click Button    ${register_button}

Open Page And Register User
    [Tags]    Martin
    I am on the page	${url}    ${browser}    ${title}
    I have registered a valid user    ${username_register_input_id}    ${valid_username}    ${password_register_input_id}    ${valid_password}    ${register_button}

I Have Logged In With Valid Credentials
    [Tags]    Martin
    I navigated to the login site
    I enter a valid username and password    ${username_input_id}    ${valid_username}    ${password_input_id}    ${valid_password}
    I click the login button    ${login_button}
    Wait Until Element Is Visible    ${cart_visible}

I Navigate To The Buy Tickets Page
    [Tags]    Martin
    Execute JavaScript    document.getElementById('tickets-section').style.display = 'block'

I Added Two Adult VIP-tickets To Cart
    [Tags]    Martin
    Select ticket type    ${adult_ticket_type}
    Select ticket category    ${vip_ticket_category}
    Select ticket quantity    ${two_ticket_quantity}
    Click Button    ${add_to_cart_button}
    Handle Alert

Select Ticket Type
    [Tags]    Martin
    [Arguments]    ${adult_ticket_type}
    Select From List By Value    id=ticket-type    ${adult_ticket_type}

Select Ticket Category
    [Tags]    Martin
    [Arguments]    ${vip_ticket_category}
    Select From List By Value    id=ticket-category    ${vip_ticket_category}

Select Ticket Quantity
    [Tags]    Martin
    [Arguments]    ${two_ticket_quantity}
    Input Text    id=ticket-quantity    ${two_ticket_quantity}

The Cart Should Be Updated
    [Tags]    Martin
    Navigate To Cart Page    ${cart_nav_button}
    Sleep    5s
    Verify Cart Quantity    ${expected_ticket_quantity}

Navigate To Cart Page
    [Tags]    Martin
    [Arguments]    ${cart_nav_button}
    Click Element    ${cart_nav_button}
    Wait Until Element Is Visible    id=cart-section

Verify Cart Quantity
    [Tags]    Martin
    [Arguments]    ${expected_ticket_quantity}
    ${actual_quantity}    Get Text    css=#cart-details li
    Should Be Equal As Numbers    ${actual_quantity}    ${expected_ticket_quantity}
