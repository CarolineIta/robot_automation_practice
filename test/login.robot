*** Settings ***
Resource    ../environment/environment.robot

Test Setup        Abrir pagina login
Test Teardown     Fechar navegador

Library    Browser

*** Test Cases ***

Usuário válido realiza login com sucesso
    [Tags]             Login                Smoke
                             
    Realizar login                             caroline.mg.ita@gmail.com        Mudar@123
    Validar usuario logado
    