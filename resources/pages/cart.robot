*** Settings ***
Resource   ../../environment/environment.robot
Library    Browser

*** Keywords ***
Finalizando a compra
    Confirmar resumo da compra
    Confirmar endereco
    Selecionar forma de entrega e aceitar termos
    Selecionar forma de pagamento
    Confirmar pedido
    
Confirmar resumo da compra
    Click                      ${SUMMARY.BTN_PROCEED_CHECKOUT}

Confirmar endereco
    Scroll To Element          ${ADDRESSSES.LINK_FOLLOW_US}
    Wait For Elements State    ${ADDRESSSES.BTN_PROCEED_CHECKOUT}                    visible
    Click                      ${ADDRESSSES.BTN_PROCEED_CHECKOUT}


Selecionar forma de entrega e aceitar termos
    Click                      ${SHIPPING.CHECK_TERMS}
    Click                      ${SHIPPING.BTN_PROCEED_CHECKOUT}

Selecionar forma de pagamento
    Click                      ${PAYMENT.BTN_BANK_WIRE}

Confirmar pedido
    Click                      ${PAYMENT.BTN_CONFIRM_ORDER}

Validar pedido realizado
    Wait For Elements State    ${ORDER_CONFIRMATION.MSG_ORDER_SUCCESS}               visible
    Wait For Elements State    ${ORDER_CONFIRMATION.TITLE_ORDER_CONFIRMATION}        visible
