*** Settings ***
Library  Browser

*** Variables ***
${SEARCH}  ballon
${SORT}  Meilleures ventes
${my_select_ball}  Ballon UWCL League 24/25 Group Stage

*** Keywords ***

I am on the search for "${SEARCH}"
    Get Element States   id=search-suggestions-banner  contains  visible
    Get Text    css=.searchText  contains  ${SEARCH}

I check that the sort list is by "${SORT}"
    #Get Select Options   id=list-sort-select  contains  visible
    Get Selected Options   id=list-sort-select  label  contains  ${SORT}


I sort the list by "${SORT}"
    Select Options By  id=list-sort-select  label  contains  ${SORT}
   

I open the first product page
    Click  css=.dpb-product-model-link.svelte-1bclr8g[href='/p/mp/adidas/ballon-uwcl-league-24-25-group-stage/_/R-p-c3163630-a6fd-45e4-8724-561f691dc1c4?mc=c3163630-a6fd-45e4-8724-561f691dc1c4_c4c1c220']


