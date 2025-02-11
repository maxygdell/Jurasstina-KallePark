*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
I am on the page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Title Should Be    ${title}

