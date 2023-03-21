*** Settings ***

Documentation     Keywords for Trojan page functions
Library           Selenium2Library


*** Keywords ***
Open the Browser    
    Open Browser    https://www.google.lk/     Chrome
    Maximize Browser Window