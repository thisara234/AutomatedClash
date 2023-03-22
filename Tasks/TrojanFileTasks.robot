*** Settings ***
Documentation     Chek the Advertisement Banner
...               How to use conditional execution.
Variables         ./../locators/locators.py
Resource          ./../Variables/Variables.robot


*** Tasks ***
Check the ad Banner
    ${Result} =     Page Should Contain Element  ${trojanVpnHeaderAdLocator}
    Log    ${Result}

   # ${present}=  Run Keyword And Return Status    Element Should Be Visible   id=my-element
    # Run Keyword If    ${present}    My Cool Keyword

Check the servers
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   ${SGHEMUXTrojanVPNTxtLocator}
    Log    ${present}    
   
    
    