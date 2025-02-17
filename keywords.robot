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

I am on the registration page
    [Tags]    Andreas
    Execute Javascript    document.getElementById('register-section').style.display = 'block'

I enter an invalid username and password
    [Tags]    Andreas
    [Arguments]    ${username_input_id}    ${invalid_username}    ${password_input_id}    ${invalid_passwords}
    Type In Element    ${username_input_id}    ${invalid_username}
    Type In Element    ${password_input_id}    ${invalid_passwords}

I click the login button
    [Tags]    Andreas
    [Arguments]    ${login_button}
    Click Button    ${login_button}

I should see an error message
    [Tags]    Andreas
    [Arguments]    ${error_message_element}    ${error_message}
    Wait Until Element Is Visible    ${error_message_element}
    Wait Until Element Contains    ${error_message_element}    ${error_message}

I enter a valid username and password
    [Tags]    Andreas
    [Arguments]    ${username_input_id}    ${valid_username}    ${password_input_id}    ${valid_password}
    Type In Element    ${username_input_id}    ${valid_username}
    Type In Element    ${password_input_id}    ${valid_password}

I should be logged in
    [Tags]    Andreas
    [Arguments]    ${buy_tickets}
    Wait Until Element Is Visible    ${buy_tickets}

I have registered a valid user
    [Tags]    Andreas
    [Arguments]    ${username_register_input_id}    ${valid_username}    ${password_register_input_id}    ${valid_password}    ${register_button}
    Execute Javascript    document.getElementById('register-section').style.display = 'block'
    Type In Element    ${username_register_input_id}    ${valid_username}
    Type In Element    ${password_register_input_id}    ${valid_password}
    Click Button    ${register_button}

I want to register the same user
    [Tags]    Andreas
    [Arguments]    ${username_register_input_id}    ${valid_username}    ${password_register_input_id}    ${valid_password}    ${register_button}
    Type In Element    ${username_register_input_id}    ${valid_username}
    Type In Element    ${password_register_input_id}    ${valid_password}
    Click Button    ${register_button}

I should see an failed to register message
    [Tags]    Andreas
    [Arguments]    ${error_message_register_element}    ${error_message_register}
    Wait Until Element Is Visible    ${error_message_register_element}
    Wait Until Element Contains    ${error_message_register_element}    ${error_message_register}


I should see an invalid password message
    [Tags]    Andreas
    [Arguments]    ${error_message_register_element}    ${error_message_password_register}
    Wait Until Element Is Visible    ${error_message_register_element}
    Wait Until Element Contains    ${error_message_register_element}    ${error_message_password_register}

I want to register a user using the wrong password length
    [Tags]    Andreas
    [Arguments]    ${username_register_input_id}    ${valid_username}    ${password_register_input_id}    ${register_button}
    FOR    ${invalid_password}    IN    @{invalid_passwords}
        Clear Element Text    ${username_register_input_id}
        Clear Element Text    ${password_register_input_id}
        Type In Element    ${username_register_input_id}    ${valid_username}
        Type In Element    ${password_register_input_id}    ${invalid_password}
        Click Button    ${register_button}
    END