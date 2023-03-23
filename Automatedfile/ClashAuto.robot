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
Clash_Auto_SG-HE_MUX_Trojan_VPN
    Browser.Open the Browser
    GoogleKeywords.Search the howdy site
    TrojanfileKeywords.Click Trojan Vpn
    #TrojanfileKeywords.Navigate to page two
    TrojanfileKeywords.Check and go the SG-HE MUX Trojan VPN

Clash_Auto_SG-HE_2_Trojan_VPN 
    Browser.Open the Browser
    GoogleKeywords.Search the howdy site
    TrojanfileKeywords.Click Trojan Vpn
    #TrojanfileKeywords.Navigate to page two
    TrojanfileKeywords.Check and go the SG-HE 2 Trojan VPN

Clash_Auto_SG_Trojan_OVH
    Browser.Open the Browser
    GoogleKeywords.Search the howdy site
    TrojanfileKeywords.Click Trojan Vpn
    #TrojanfileKeywords.Navigate to page two
    TrojanfileKeywords.Check and go the SG Trojan OVH


#robot -t Clash_Auto_SG-HE_MUX_Trojan_VPN ClashAuto.robot