#Directory
import os


current_directory = os.getcwd().replace('\\', '/')

#variables
browser = "chrome"
url = f"{current_directory}/JuraStinaKallePark/jurap.html"
title = "Jura-Stina-Kalle Park"

username_input_id = "id= login-username"
password_input_id = "id= login-password"
login_button = "id= login"

valid_username = ""
valid_password = ""

valid_username_vip = ""
valid_password_vip = ""

error_message_element = ""
error_message = ""

successful_message_element = ""
successful_message = ""

test_variable = "Hello, Robot!"