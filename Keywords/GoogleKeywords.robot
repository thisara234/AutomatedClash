*** Settings ***

Documentation     Keywords for Google
Library           Selenium2Library
Resource          ./../Variables/Variables.robot
Resource          ./../PageObjects/GooglePageObjects.robot
Resource    ../PageObjects/Browser.robot
Variables         ./../locators/locators.py

*** Keywords ***

<<<<<<< Updated upstream
Search the howdy site
=======
*** Keywords ***
Search the howdy site
    Browser.Open the Browser
>>>>>>> Stashed changes
    GooglePageObjects.Click on the Google Search Bar
    GooglePageObjects.Click Search Button
    GooglePageObjects.Click First result


