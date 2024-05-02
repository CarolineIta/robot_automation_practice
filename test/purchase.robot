*** Settings ***
Resource    ../environment/environment.robot

Suite Setup       Abrir pagina login
Test Setup        Realizar login        caroline.mg.ita@gmail.com        Mudar@123
Test Teardown     Fechar navegador

Library    Browser

*** Test Cases ***

Usuário faz compras com sucesso
    [Tags]             Purchase                Smoke
    Buscar produto     BLOUSES
    Selecionar produto
    Adicionar produto no carrinho
    Continuar para checkout
    Finalizando a compra
    Validar pedido realizado
    
