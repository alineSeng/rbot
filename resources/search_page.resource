*** Settings ***
Library  Browser

*** Variables ***

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
    Click  xpath=(//*[contains(concat(' ', normalize-space(@class), ' '), ' product-list ')]/*)[1]//a[./img]


