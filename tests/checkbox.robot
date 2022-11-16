*** Settings ***

Resource         ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Variables ***	
${CHECKPYTHON}            xpath=//android.widget.CheckBox[contains(@text,'Python')]

*** Test Cases ***
 
Deve selecionar o checkbox Python
    Go To Checkbox

    Click Element                     ${CHECKPYTHON}
    Wait Until Element Is Visible     id=io.qaninja.android.twp:id/rvContainer

    Element Attribute Should Match    ${CHECKPYTHON}    checked    true