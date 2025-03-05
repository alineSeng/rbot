*** Settings ***
Library  Browser

*** Variables ***

${my_select_ball}  Ballon UWCL League 24/25 Group Stage

*** Keywords ***

I am on the product page for "${name}"
    Get Text    css=h1    contains    ${name}

I add the product to the cart 
    Click     css=.conversion-zone__purchase-cta
    #Click    css=button[class='vtmn-btn vtmn-btn_variant--conversion vtmn-btn_size--stretched conversion-zone__purchase-cta vtmn-mx-auto']

the product is added to the cart successfully
    #Get Element States    css=#popin-cross-sell [slot='title']    contains    visible
    Wait For Elements State    css=#popin-cross-sell [slot='title']    visible    10s

I go to the cart
    Click  css=[data-href='/checkout/cart']