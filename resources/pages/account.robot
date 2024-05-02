*** Settings ***
Resource   ../../environment/environment.robot
Library    Browser
            
*** Keywords ***
Informar email  
    ${email}=                      Gerar email randomico
    Fill Text                      ${CREATE_ACCOUNT.INPUT_EMAIL}                      ${email}
    Click                          ${CREATE_ACCOUNT.BTN_CREATE_ACCOUNT}

Informar genero
    Click                          ${PERSONAL_INFORMATION.TITLE_MR}

Informar nome
    ${nome}=                       Gerar nome randomico
    Fill Text                      ${PERSONAL_INFORMATION.FIRST_NAME}                 ${nome}

Informar sobrenome
    ${sobrenome}=                  Gerar sobrenomenome randomico
    Fill Text                      ${PERSONAL_INFORMATION.LAST_NAME}                  ${sobrenome}

Informar senha
    ${senha}=                      Gerar senha randomica    
    Fill Text                      ${PERSONAL_INFORMATION.PASSWORD}                   ${senha}

Registrar nova conta 
    Click                          ${PERSONAL_INFORMATION.REGISTER}

Preencher dados cadastrais
    Informar genero
    Informar nome
    Informar sobrenome
    Informar senha
    Registrar nova conta  

Validar nova conta criada
    Wait For Elements State        ${MY_ACCOUNT.ALERT_ACCOUNT_CREATED_SUCCESS}        visible
    Wait For Elements State        ${MY_ACCOUNT.TITLE_MY_ACCOUNT}                     visible 
    Wait For Elements State        ${MY_ACCOUNT.TXT_WELCOME}                          visible
 