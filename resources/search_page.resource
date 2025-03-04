*** Settings ***
Library  Browser

*** Variables ***
${SEARCH}  ballon

*** Keywords ***

I am on the search for ${SEARCH}
    Get Element States   id=search-suggestions-banner  contains  visible
    Get Text    css=.searchText  contains  ${SEARCH}

