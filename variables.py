#Directory
import os


current_directory = os.getcwd().replace('\\', '/')

#variables
browser = "chrome"
url = f"{current_directory}/JuraStinaKallePark/jurap.html"
title = "Jura-Stina-Kalle Park"

login_page = "xpath=//section[@id='login-nav']//login-section"

username_input_id = "id=login-username"
password_input_id = "id=login-password"
login_button = "xpath=//*[@id='login']"

invalid_username = "qwerty1234"
invalid_password = "asdf123"

valid_username = ""
valid_password = ""

valid_username_vip = ""
valid_password_vip = ""

error_message_element = "id=login-message"
error_message = "Invalid username or password"

successful_message_element = ""
successful_message = ""

test_variable = "Hello, Robot!"