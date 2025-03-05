*** Settings ***
Library  Browser

*** Variables ***
${SEARCH}  ballon
${SORT}  Meilleures ventes
${my_select_ball}  Ballon UWCL League 24/25 Group Stage

*** Keywords ***

I add the product to the cart 
    #Click     css=.conversion-zone__purchase-cta
    Click    css=button[class='vtmn-btn vtmn-btn_variant--conversion vtmn-btn_size--stretched conversion-zone__purchase-cta vtmn-mx-auto']
