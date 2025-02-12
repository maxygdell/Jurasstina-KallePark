*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Type In Element
    [Arguments]    ${id_element}    ${text_to_write}
    Input Text    ${id_element}    ${text_to_write}

I am on the page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Title Should Be    ${title}

I navigated to the login site
    Execute JavaScript    document.getElementById('login-section').style.display = 'block'

I enter an invalid username and password
    [Arguments]    ${username_input_id}    ${invalid_username}    ${password_input_id}    ${invalid_password}
    Type In Element    ${username_input_id}    ${invalid_username}
    Type In Element    ${password_input_id}    ${invalid_password}

I click the login button
    [Arguments]    ${login_button}
    Click Button    ${login_button}

I should see an error message
    [Arguments]    ${error_message_element}    ${error_message}
    Wait Until Element Is Visible    ${error_message_element}
    Wait Until Element Contains    ${error_message_element}    ${error_message}

I enter a valid username and password
    [Arguments]    ${username_input_id}    ${valid_username}    ${password_input_id}    ${valid_password}
    Type In Element    ${username_input_id}    ${valid_username}
    Type In Element    ${password_input_id}    ${valid_password}

I should be logged in
    [Arguments]    ${buy_tickets_visible}
    Wait Until Element Is Visible    ${buy_tickets_visible}

I have registered a valid user
    [Arguments]    ${username_register_input_id}    ${valid_username}    ${password_register_input_id}    ${valid_password}    ${register_button}
    Execute Javascript    document.getElementById('register-section').style.display = 'block'
    Type In Element    ${username_register_input_id}    ${valid_username}
    Type In Element    ${password_register_input_id}    ${valid_password}
    Click Button    ${register_button}


I register a user with username
    [Arguments]    ${username_register_input_id}    ${valid_username2}    ${password_register_input_id}    ${valid_password2}    ${register_button}
     Execute JavaScript    document.getElementById('register-section').style.display = 'block'
    Input Text    ${username_register_input_id}    ${valid_username2}
    Input Text    ${password_register_input_id}    ${valid_password2}
    Click Button  ${register_button}
    
I should see the registration success message
    [Arguments]    ${successful_message_element}    ${successful_message}
    Wait Until Element Is Visible    ${successful_message_element}  
    Element Should Contain    ${successful_message_element}    ${successful_message}