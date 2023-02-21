*** Settings ***

Documentation     Keywords for Trojan page functions
Library           Selenium2Library
Variables          ./../locators/locators.py

*** Keywords ***

Click Trojan Vpn header
    Click Element    ${trojanVpnHeaderLocator}
    Sleep            1

Go to Second Page
    Click Element   ${SecondpageLocator}
    Sleep           1




