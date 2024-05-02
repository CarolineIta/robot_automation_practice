*** Settings ***
Resource   ../../environment/environment.robot
Library    Browser

*** Keywords ***
Acessar menu      #adicionar estrutura de decisão
    [Arguments]                ${menu}       
    Click        ${MENU_USER_INFO.LINK_SIGNIN}
