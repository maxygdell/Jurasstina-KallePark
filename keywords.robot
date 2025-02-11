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
    Click Link    ${login_page}

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
    Element Text Should Be    ${error_message_element}    ${error_message}






