#Directory
import os


current_directory = os.getcwd().replace('\\', '/')

#variables
browser = "chrome"
url = f"{current_directory}/JuraStinaKallePark/jurap.html"
title = "Jura-Stina-Kalle Park"

username_register_input_id ="id=reg-username"
password_register_input_id ="id=reg-password"

username_input_id = "id=login-username"
password_input_id = "id=login-password"

login_button = "//*[@id='login-form']/button"
register_button = "//*[@id='register-form']/button"
add_to_cart_button = "//*[@id='ticket-form']/button"
cart_nav_button = "id=cart-nav"
proceed_to_checkout_button = "id=checkout-button"

invalid_username = "qwerty1234"
invalid_password = "asdf123"

valid_username = "KimMedFamiljen"
valid_password = "Familj123"

error_message_element = "id=login-message"
error_message = "Invalid username or password"

successful_message_element = ""
successful_message = ""

buy_tickets = "id=tickets-nav"
cart_visible = "id=cart-nav"

test_variable = "Hello, Robot!"

adult_ticket_type = "Adult"
child_ticket_type = "Child"
senior_ticket_type = "Senior"

regular_ticket_category = "Regular"
vip_ticket_category = "VIP"

two_ticket_quantity = "2"
expected_ticket_quantity = "2 VIP Adult Ticket(s) - $200"
