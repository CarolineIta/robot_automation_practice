*** Settings ***
Resource   ../../environment/environment.robot
Library    Browser

*** Keywords ***
Buscar produto
    [Arguments]    ${produto}
    Fill Text      ${HOME.INPUT_SEARCH}       ${produto}  
    Click          ${HOME.BTN_SEARCH}
