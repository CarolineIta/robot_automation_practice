*** Settings ***
Resource   ../../environment/environment.robot
Library    Browser

*** Keywords ***
Realizar login
    [Arguments]                ${email}                                ${senha}
    Fill Text                  ${LOGIN.INPUT_EMAIL}                    ${email}
    Fill Text                  ${LOGIN.INPUT_PASSWORD}                 ${senha}
    Click                      ${LOGIN.BTN_ENTRAR}

Validar usuario logado
    Wait For Elements State    ${LOGIN.BTN_SAIR}                       visible 
    Wait For Elements State    ${MY_ACCOUNT.TITLE_MY_ACCOUNT}          visible 
    Wait For Elements State    ${MY_ACCOUNT.TXT_WELCOME}               visible
