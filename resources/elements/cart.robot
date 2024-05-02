*** Variables ***
&{SUMMARY}
...    BTN_PROCEED_CHECKOUT=css=.standard-checkout[title="Proceed to checkout"]    

&{ADDRESSSES}
...    LINK_FOLLOW_US=//h4[contains(.,'Follow us')]
...    BTN_PROCEED_CHECKOUT=css=button[name="processAddress"]    

&{SHIPPING}
...    CHECK_TERMS=//input[@type='checkbox']  
...    BTN_PROCEED_CHECKOUT=css=button[name="processCarrier"].standard-checkout
    
&{PAYMENT}
...    BTN_BANK_WIRE=//a[@class='bankwire']
...    BTN_CONFIRM_ORDER=//span[contains(.,'I confirm my order')]

&{ORDER_CONFIRMATION}
...    MSG_ORDER_SUCCESS=//p[contains(.,'Your order on My Shop is complete.')]
...    TITLE_ORDER_CONFIRMATION=//h1[@class='page-heading'][contains(.,'Order confirmation')]
