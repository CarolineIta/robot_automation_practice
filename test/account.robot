*** Settings ***
Resource    ../environment/environment.robot

Test Setup        Abrir pagina login
Test Teardown     Fechar navegador

Library    Browser

*** Test Cases ***

Criar nova conta com sucesso
    [Tags]             Cadastro                Smoke
    Informar email
    Preencher dados cadastrais
    Validar nova conta criada
     