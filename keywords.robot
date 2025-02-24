*** Settings ***
Library    SeleniumLibrary
Variables  variables.py



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
    [Tags]   Wassim
    [Arguments]   ${username}  ${password}
    Click Link    ${Register_link}
    Input Text    ${username_register_input_id}    ${username}
    Input Text    ${password_register_input_id}    ${password}
    Click Button  ${register_button}
    
    
I should see the registration success message
    [Tags]   Wassim
    [Arguments]    ${successful_message_element}    ${successful_message}
    Wait Until Element Is Visible    ${successful_message_element}  timeout=5s
    Element Should Contain    ${successful_message_element}    ${successful_message}
    Wait Until Element Is Visible  ${login_Section}  timeout=10s

Iam registered and logged in 
    I register a user with username  ${valid_username2}  ${valid_password2}
    I am logged in with valid credentials    ${valid_username2}    ${valid_password2} 

I am logged in with valid credentials
    [Arguments]     ${valid_username2}    ${valid_password2} 
    Click Link    ${loginlink_element}
     Wait Until Element Is Visible    ${login_Section}  timeout=5s
    Input Text    ${username_input_id}    ${valid_username2}
    Input Text    ${password_input_id}     ${valid_password2}
    Click Button    ${login_button}
    Wait Until Element Is Visible  ${home_section}  timeout=5s
   

I Add one Regular Tickets To Cart
    [Arguments]    ${ticket_type}    ${ticket_option}    ${ticket_quantity}
    Click Link  ${Ticketlink_element}
    Select From List By Value    ${ticket_type_selector}    ${ticket_type}
    Select From List By Value      ${ticket_category_selector}    ${ticket_option}
    Input Text    ${ticket_quantity}    1     
    Click Button    ${add_to_cart_button}
    Alert Should Be Present   ${alert_cart_message}  





When i Choose Safari Date
      [Arguments]    ${safari_date}
      I Add one Regular Tickets To Cart     ${ticket_type}    ${ticket_option}    ${ticket_quantity}
       Click Element   ${safari_nav}
    Input Text    ${safari_dates_category}    27022025


And i Select Herbivore Tour safari
    [Arguments]    ${safari_type}   
    Select From List By Value   ${safari_type_category}   Herbivore Tour
    

I add the tours to cart
    Click Button    ${safari_cart_button}  
    sleep  10  
     Handle Alert

 I Can Proceed To Checkout
    
    Click Element   ${cart_nav}
    Click Button    ${checkout_button}
   
 