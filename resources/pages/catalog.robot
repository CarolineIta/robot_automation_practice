*** Settings ***
Resource   ../../environment/environment.robot
Library    Browser

*** Keywords ***
Selecionar produto
    Scroll To Element          ${BLOUSE.TXT_PRODUCT_INFORMATION}
    Wait For Elements State    ${BLOUSE.BTN_COLOR_INFORMATION}         visible
    Click                      ${BLOUSE.BTN_COLOR_INFORMATION} 
