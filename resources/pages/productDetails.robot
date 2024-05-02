*** Settings ***
Resource   ../../environment/environment.robot
Library    Browser

*** Keywords ***
Selecionar quantidade
    [Arguments]                ${quantidade}
    Fill Text                  ${BLOUSE_DETAILS.INPUT_QUANTITY}                    ${quantidade}

Selecionar cor 
    Click                      ${BLOUSE_DETAILS.LINK_COLOR_WHITE}

Adicionar produto no carrinho
    Selecionar cor
    Selecionar quantidade      2
    Click                      ${BLOUSE_DETAILS.BTN_ADD_TO_CART}

Continuar para checkout
    Wait For Elements State    ${MODAL_PROCEED_CHECKOUT.BTN_PROCEED_CHECKOUT}      visible
    Click                      ${MODAL_PROCEED_CHECKOUT.BTN_PROCEED_CHECKOUT}
