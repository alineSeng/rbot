*** Settings ***
Library  Browser

*** Variables ***
${URL}  https://www.decathlon.fr/
${SEARCH}  ballon

*** Keywords ***
I am on the homepage
    Open Browser  ${URL}  
    Get Element States  id=didomi-notice-agree-button  contains  visible
    Click   selector=id=didomi-notice-agree-button
    Get Element States  id=didomi-popup  contains  detached

Search for a product
    #Fill Text    selector=input[placeholder='Rechercher un produit, un sport ou une référence']    txt=${SEARCH_TERM}
    Fill Text    xpath=//input[@type='search']    ${SEARCH}
    
    Click   css=#search-bar button[type='submit']
    #Press Keys    css=#search-bar input[type='search]   enter 
    
    Get Element States   id=search-suggestions-banner  contains  visible
    Get Text    css=.searchText  contains  ${SEARCH}