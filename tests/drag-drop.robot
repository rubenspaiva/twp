*** Settings ***

Resource         ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Variables ***	

*** Test Cases ***
Deve mover o Hulk para primeira posição
    Go To List Avengers
    Drag And Drop    io.qaninja.android.twp:id/drag_handle    3    0