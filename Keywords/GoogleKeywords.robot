*** Settings ***

Documentation     Keywords for Trojan page functions
Library           Selenium2Library
Resource          ./../Variables/Variables.robot
Resource          ./../PageObjects/GooglePageObjects.robot
Variables         ./../locators/locators.py


*** Keywords ***
Search the howdy site
    GooglePageObjects.Click on the Google Search Bar
    GooglePageObjects.Click Search Button
    GooglePageObjects.Click First result
    


