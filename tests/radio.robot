*** Settings ***

Resource         ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Variables ***	
${RADIOPYTHON}            xpath=//android.widget.RadioButton[contains(@text,'Python')]

*** Test Cases ***
 
Deve selecionar o radiobutton Python
    Go To Radio Buttons

    Click Element                     ${RADIOPYTHON}
    Wait Until Element Is Visible     ${RADIOPYTHON} 

    Element Attribute Should Match    ${RADIOPYTHON}    checked    true