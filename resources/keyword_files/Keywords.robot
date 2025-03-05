#Grupp 6 - Andreas J, Wassim, Martin.

*** Settings ***
Library    SeleniumLibrary
Variables  ${EXECDIR}/util/variables.py

*** Variables ***
${HTML_PATH}    file://${EXECDIR}/JuraStinaKallePark/jurap.html
${url}=    ${HTML_PATH}    

*** Keywords ***

I Am On The Page
    [Tags]    Andreas
    [Arguments]    ${HTML_PATH}    ${browser}    ${title}
    Open Browser    ${HTML_PATH}    ${browser}
    Title Should Be    ${title}