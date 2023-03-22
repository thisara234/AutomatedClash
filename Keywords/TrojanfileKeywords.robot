*** Settings ***

Documentation     Keywords for Trojan
Library           Selenium2Library
Resource          ./../Variables/Variables.robot
Resource          ../PageObjects/TrojanfilePageObjects.robot
Variables         ./../locators/locators.py

*** Keywords ***
Click Trojan Vpn
    TrojanfilePageObjects.Click Trojan Vpn header
    Sleep    7
    Reload Page
    TrojanfilePageObjects.Click Trojan Vpn header

Navigate to page two
    TrojanfilePageObjects.Go to Second Page
    

Check and go the SG-HE MUX Trojan VPN
  FOR    ${counter}    IN RANGE    1    6    1
      Log    ${counter}
      ${SGHEMUXTrojanVPNpresent?}=  Run Keyword And Return Status    Element Should Be Visible   ${SGHEMUXTrojanVPNTxtLocator}
      
      IF  ${SGHEMUXTrojanVPNpresent?} == True
          # ${SGHEMUXTrojanVPNpresentYES}    Set Variable    True
          TrojanfilePageObjects.Select SG-HE MUX Trojan VPN
          Exit For Loop
      END
      
      TrojanfilePageObjects.Go to the Next Page    ${counter}

      
  END

Check and go the SG-HE 2 Trojan VPN
  FOR    ${counter}    IN RANGE    1    6    1
      Log    ${counter}
      ${SGHE2TrojanVPNpresent?}=  Run Keyword And Return Status    Element Should Be Visible   ${SGHE2TrojanVPNTxtLocator}
      
      IF  ${SGHE2TrojanVPNpresent?} == True
          # ${SGHEMUXTrojanVPNpresentYES}    Set Variable    True
          TrojanfilePageObjects.Select SG-HE 2 Trojan VPN
          Exit For Loop
      END
      
      TrojanfilePageObjects.Go to the Next Page    ${counter}

      
  END

Check and go the SG Trojan OVH
  FOR    ${counter}    IN RANGE    1    6    1
      Log    ${counter}
      ${SGTrojanOVHpresent?}=  Run Keyword And Return Status    Element Should Be Visible   ${SGTrojanOVHTxtLocator}
      
      IF  ${SGTrojanOVHpresent?} == True
          # ${SGHEMUXTrojanVPNpresentYES}    Set Variable    True
          TrojanfilePageObjects.Select SG-HE 3 Trojan VPN
          Exit For Loop
      END
      
      TrojanfilePageObjects.Go to the Next Page    ${counter}

      
  END
  
  
  
  # WHILE     ${present}=True
  #    ${present}=  Run Keyword And Return Status    Element Should Be Visible   ${SGHEMUXTrojanVPNTxtLocator}

  # END
      
    #${present}=  Run Keyword And Return Status    Element Should Be Visible   ${SGHEMUXTrojanVPNTxtLocator}
    #Log    ${present}
   
   
    