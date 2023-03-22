*** Settings ***

Documentation     Keywords for Trojan page functions
Library           Selenium2Library
Resource          ./../Variables/Variables.robot
Resource          ./../PageObjects/GooglePageObjects.robot
Resource          ../PageObjects/Browser.robot
Resource          ../Keywords/GoogleKeywords.robot
Resource          ../Keywords/SubconvKeywords.robot
Resource          ../Keywords/TrojanfileKeywords.robot
Variables         ./../locators/locators.py

*** Test case ***
Clash Auto
    Browser.Open the Browser
    GoogleKeywords.Search the howdy site
    TrojanfileKeywords.Click Trojan Vpn
    #TrojanfileKeywords.Navigate to page two
    TrojanfileKeywords.Check and go the server 1
    

