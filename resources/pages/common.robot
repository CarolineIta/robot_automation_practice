*** Settings ***
Resource    ../../environment/environment.robot
Library    Browser
Library    FakerLibrary        locale=pt_BR

*** Keywords ***
Abrir site automationpractice
    New Browser           browser=chromium
    New Page              ${BASE_URL}

Abrir pagina login
    New Browser           browser=chromium        
    New Page              ${LOGIN_URL}
Fechar navegador
    Close Page            ALL

Gerar email randomico
    ${faker_email}=       FakerLibrary.Email
    [Return]              ${faker_email}

Gerar nome randomico
    ${faker_name}=        FakerLibrary.First Name
    [Return]              ${faker_name}

Gerar sobrenomenome randomico
    ${faker_sobrenome}=   FakerLibrary.Last Name
    [Return]              ${faker_sobrenome}

Gerar senha randomica
    ${faker_senha}=       FakerLibrary.Password        length=5    special_chars=False
    [Return]              ${faker_senha}

