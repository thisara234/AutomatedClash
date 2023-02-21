*** Settings ***

Documentation     Keywords for Trojan page functions
Library           Selenium2Library
Variables          ./../locators/locators.py

*** Keywords ***

Click Trojan Vpn header
    Click Element                    ${trojanVpnHeaderLocator}
    Sleep                            1

Go to Second Page
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
    Click Element                    ${ThirdpageLocator}
    Sleep                            1

Select SG-HE 3 Trojan VPN
    Element Text Should Be           ${SGHEMUXTrojanVPNTxtLocator}              SG-HE 3 Trojan VPN
    Click Element                    ${SGHE3TrojanVPNButtonLocator}
    Sleep                            1

Go to Fourth Page
    Click Element                    ${FourthpageLocator}
    Sleep                            1

Select SG-HE 1 Trojan VPN
    Element Text Should Be           ${SGHE1TrojanVPNTxtLocator}               SG-HE 1 Trojan VPN
    Click Element                    ${SGHE1TrojanVPNButtonLocator}
    Sleep                            1

Go to Fifth Page
    Click Element                    ${FifthpageLocator}
    Sleep                            1

Select SG Trojan AMP
    Element Text Should Be           ${SGTrojanAMPTxtLocator}               SG Trojan AMP
    Click Element                    ${SGTrojanAMPButtonLocator}
    Sleep                            1
