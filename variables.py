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

invalid_username = "qwerty1234"
invalid_passwords = ["", "asdf123", "åäö"]

valid_username = "KimMedFamiljen"
valid_password = "Familj123"

error_message_element = "id=login-message"
error_message = "Invalid username or password"

error_message_register_element = "id=register-message"
error_message_register = "Username already exists. Please choose another."
error_message_password_register = "Password must be at least 8 characters long."

successful_message_element = ""
successful_message = ""

buy_tickets = "id=tickets-nav"

test_variable = "Hello, Robot!"
