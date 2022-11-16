*** Settings ***

Resource         ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Variables ***	
${BUTTON_REMOVE}        id=io.qaninja.android.twp:id/btnRemove

*** Test Cases ***
Deve remover o Capitão América
    Go To List Avengers
    Swipe By Percent                    88.88    18.22    47.22    18.22
    Wait Until Element Is Visible       ${BUTTON_REMOVE}
    Click Element                       ${BUTTON_REMOVE}
    Wait Until Page Contains            Item removido!