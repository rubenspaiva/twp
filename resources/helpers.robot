*** Settings ***
Documentation          KWs helpers

*** Variables ***
${START}               COMEÇAR
${MENU_HAMBURGUER}     xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}            id=io.qaninja.android.twp:id/navView

*** Keywords ***
Get Started
    Wait Until Page Contains         ${START}
    Click Text                       ${START}

Open Nav
    Wait Until Element Is Visible    ${MENU_HAMBURGUER}
    Click Element                    ${MENU_HAMBURGUER}
    Wait Until Element Is Visible    ${NAV_VIEW}

Go To ${ELEMENT}
    Open Nav

    Click Text                       ${ELEMENT}
    Wait Until Page Contains         ${ELEMENT}

Go To Login Form
    Go To FORMS

    Click Text                       LOGIN
    Wait Until Page Contains         Fala QA, vamos testar o login?

Go To SignUp Form
    Go To FORMS

    Click Text                       CADASTRO
    Wait Until Page Contains         Bem-vindo, crie sua conta.

Go To Radio Buttons
    Go To INPUTS

    Click Text                       BOTÕES DE RADIO
    Wait Until Page Contains         Escolha sua linguagem preferida

Go To Checkbox
    Go To INPUTS

    Click Text                       CHECKBOX
    Wait Until Page Contains         Marque as techs que usam Appium

Go To Short Click
    Go To BOTÕES
    Wait Until Page Contains         CLIQUE SIMPLES

    Click Text                       CLIQUE SIMPLES
    Wait Until Page Contains         Botão clique simples

Go To Long Click
    Go To BOTÕES
    Wait Until Page Contains         CLIQUE LONGO

    Click Text                       CLIQUE LONGO
    Wait Until Page Contains         Botão clique longo

Go To List Avengers
    Go To AVENGERS
    Wait Until Page Contains         AVENGERS

    Click Text                       LISTA
    Wait Until Page Contains         LISTA