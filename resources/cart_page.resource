*** Settings ***
Library  Browser

*** Variables ***
${SEARCH}  ballon
${SORT}  Meilleures ventes
${my_select_ball}  Ballon UWCL League 24/25 Group Stage

*** Keywords ***

the cart is displayed
    Get Text    css=h1  contains  Panier


there are ${count} product(s) in the cart
    Get Element Count  css=.cart-line  == ${count}