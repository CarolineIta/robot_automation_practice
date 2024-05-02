*** Settings ***
# ELEMENTOS
Resource    ../../resources/elements/account.robot
Resource    ../../resources/elements/authentication.robot
Resource    ../../resources/elements/cart.robot
Resource    ../../resources/elements/catalog.robot
Resource    ../../resources/elements/home.robot
Resource    ../../resources/elements/menu.robot
Resource    ../../resources/elements/productDetails.robot

# COMMON
Resource    ../../resources/pages/common.robot

# PAGES
Resource    ../../resources/pages/account.robot
Resource    ../../resources/pages/cart.robot
Resource    ../../resources/pages/catalog.robot
Resource    ../../resources/pages/home.robot
Resource    ../../resources/pages/login.robot
Resource    ../../resources/pages/menu.robot
Resource    ../../resources/pages/productDetails.robot

*** Variables ***
${BASE_URL}        http://www.automationpractice.pl/index.php  
${LOGIN_URL}       http://www.automationpractice.pl/index.php?controller=authentication&back=my-account
