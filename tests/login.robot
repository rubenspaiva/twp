*** Settings ***

Resource         ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Variables ***	
${EMAIL}            id=io.qaninja.android.twp:id/etEmail
${PASSWORD}         id=io.qaninja.android.twp:id/etPassword
${SUBMIT}           id=io.qaninja.android.twp:id/btnSubmit

*** Test Cases ***
 
Deve logar com sucesso
    Go To Login Form

    Input Text                       ${EMAIL}        eu@papito.io
    Input Text                       ${PASSWORD}     qaninja
    Click Element                    ${SUBMIT}
    
    Wait Until Page Contains         Show! Suas credenciais são validas.