*** Settings ***
Library  Browser

*** Variables ***

${my_select_ball}  Ballon UWCL League 24/25 Group Stage

*** Keywords ***

the cart is displayed
    Get Text    css=h1  contains  Panier


there are "${count}"" product(s) in the cart
    Get Element Count  css=.cart-line  ==  ${count}

the product "${name}" is in the cart
    Get Text    css=.cart-line a span  contains  ${name}