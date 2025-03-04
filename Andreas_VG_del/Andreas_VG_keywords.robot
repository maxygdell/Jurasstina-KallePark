*** Keywords ***

I Am On The Registration Page
    [Tags]    Andreas
    Execute Javascript    document.getElementById('register-section').style.display = 'block'

I Want To Register The Same User
    [Tags]    Andreas
    Type In Element    ${username_register_input_id}    ${valid_username}
    Type In Element    ${password_register_input_id}    ${valid_password}
    Click Button    ${register_button}

I Should See An Failed To Register Message
    [Tags]    Andreas
    Wait Until Element Is Visible    ${error_message_register_element}
    Wait Until Element Contains    ${error_message_register_element}    ${error_message_register}

I Should See An Invalid Password Message
    [Tags]    Andreas
    Wait Until Element Is Visible    ${error_message_register_element}
    Wait Until Element Contains    ${error_message_register_element}    ${error_message_password_register}

I Want To Register A User Using The Wrong Password Length
    [Tags]    Andreas
    FOR    ${invalid_password}    IN    @{invalid_passwords}
        Clear Element Text    ${username_register_input_id}
        Clear Element Text    ${password_register_input_id}
        Type In Element    ${username_register_input_id}    ${valid_username}
        Type In Element    ${password_register_input_id}    ${invalid_password}
        Click Button    ${register_button}
    END

I Book Tours On The Weekend
    [Tags]    Andreas
    Select Safari Weekend Date
    Select Safari Tour
    Click Button    ${safari_cart_button}

Select Safari Weekday Date
    [Tags]    Andreas
    Input Text    ${safari_dates_category}    ${safari_weekday_date}

Select Safari Tour
    [Tags]    Andreas
    Select From List By Value    ${safari_type_category}    ${herbivore_tour}

I Added Two Regular Adult Tickets To Cart
    [Tags]    Andreas
    Select ticket type    ${adult_ticket_type}
    Select ticket category    ${regular_ticket_category}
    Select ticket quantity    ${two_ticket_quantity}
    Click Button    ${add_to_cart_button}
    Alert Should Be Present    ${alert_cart_message}    ACCEPT

I Should See A Cannot Book On Weekend Message
    [Tags]    Andreas
    Wait Until Element Is Visible    ${error_message_element_safari}
    Wait Until Element Contains    ${error_message_element_safari}    ${safari_weekend_denied_message}

I Should See Safari Access Denied Message
    [Tags]    Andreas
    Wait Until Element Is Visible    ${error_message_element_safari}
    Wait Until Element Contains    ${error_message_element_safari}    ${safari_vip_booking_denied_message}

Select Safari Date
    [Tags]    Andreas
    Input Text    ${safari_dates_category}    ${safari_weekend_date}

I Have Logged In And Booked The Regular Tickets
    [Tags]    Andreas
    I Have Registered A Valid User
    I Have Logged In With Valid Credentials
    I Navigate To The Buy Tickets Page
    I Added Two Regular Adult Tickets To Cart

I Add The VIP Safari Tour on Weekday
    [Tags]    Andreas
    Select Safari Weekday Date
    Select Safari Exclusive Tour
    Click Button    ${safari_cart_button}