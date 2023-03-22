*** Settings ***

Documentation     Keywords for Trojan page functions
Library           Selenium2Library
Resource          ./../Keywords/TrojanfileKeywords.robot
Variables         ./../locators/locators.py


*** Keywords ***

Click Trojan Vpn header
    Click Element                    ${trojanVpnHeaderLocator}
    Sleep                            1

Go to First Page
    Scroll Element Into View         //h5[text()='Information']//parent::div
    Sleep                            3
    Click Element                    ${FirstPageLocator}
    Sleep                            1

Go to Second Page
    Scroll Element Into View         //h5[text()='Information']//parent::div
    Sleep                            3
    Click Element                    ${SecondpageLocator}
    Sleep                            1

Select SG-HE MUX Trojan VPN
    Element Text Should Be           ${SGHEMUXTrojanVPNTxtLocator}            SG-HE MUX Trojan VPN
    Click Element                    ${SGHEMUXTrojanVPNButtonLocator}
    Sleep                            1

Select SG-HE 2 Trojan VPN
    Element Text Should Be           ${SGHE2TrojanVPNTxtLocator}              SG-HE 2 Trojan VPN
    Click Element                    ${SGHE2TrojanVPNButtonLocator}
    Sleep                            1

    
Go to Third Page
    Scroll Element Into View         //h5[text()='Information']//parent::div
    Click Element                    ${ThirdpageLocator}
    Sleep                            1

Select SG-HE 3 Trojan VPN
    Element Text Should Be           ${SGHE3TrojanVPNTxtLocator}              SG-HE 3 Trojan VPN
    Click Element                    ${SGHE3TrojanVPNButtonLocator}
    Sleep                            1

Go to Fourth Page
    Scroll Element Into View         //h5[text()='Information']//parent::div
    Click Element                    ${FourthpageLocator}
    Sleep                            1

Select SG-HE 1 Trojan VPN
    Element Text Should Be           ${SGHE1TrojanVPNTxtLocator}               SG-HE 1 Trojan VPN
    Click Element                    ${SGHE1TrojanVPNButtonLocator}
    Sleep                            1

Go to Fifth Page
    Scroll Element Into View         //h5[text()='Information']//parent::div
    Click Element                    ${FifthpageLocator}
    Sleep                            1

Select SG Trojan AMP
    Element Text Should Be           ${SGTrojanAMPTxtLocator}               SG Trojan AMP
    Click Element                    ${SGTrojanAMPButtonLocator}
    Sleep                            1

Go to the Next Page
    [Arguments]                      ${counter}
    Log    ${counter}
    IF  ${counter} == 1
        Go to First Page
    END
    IF  ${counter} == 2
        Go to Second Page
    END
    IF  ${counter} == 3
        Go to Third Page
    END
    IF  ${counter} == 4
        Go to Fourth Page
    END
    IF  ${counter} == 5
        Go to Fifth Page
    END
    
    

