*** Settings ***

Documentation     Keywords for Trojan page functions
Library           Selenium2Library
Resource          ./../Variables/Variables.robot
Variables         ./../locators/locators.py

*** Keywords ***

Click on the Google Search Bar
        Sleep               3
        Click Element       ${SearchBarLocator}
        Input Text          ${SearchBarLocator}    ${KeywordForSearch}
        Sleep               0.5

Click Search Button
        Sleep               1
        Click Element       ${SearchButtonLocator}

Click First result
        Sleep               1
        Click Element       ${FirstSearchResultLocatorhowdy}
