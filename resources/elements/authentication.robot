*** Variables ***
&{LOGIN}
...    INPUT_EMAIL=//input[@id='email']
...    INPUT_PASSWORD=//input[contains(@type,'password')]    
...    BTN_ENTRAR=//span[contains(.,'Sign in')]
...    BTN_SAIR=//a[@class='logout']  

&{CREATE_ACCOUNT}
...    INPUT_EMAIL=//input[@name='email_create']
...    BTN_CREATE_ACCOUNT=//span[contains(.,'Create an account')]

&{PERSONAL_INFORMATION}
...    TITLE_MR=//input[@type='radio'][contains(@id,'gender1')]
...    TITLE_MS=//input[@value='2']
...    FIRST_NAME=//input[@name='customer_firstname']
...    LAST_NAME=//input[@name='customer_lastname']
...    PASSWORD=//input[@type='password']
...    REGISTER=//span[contains(.,'Register')]