*** Settings ***
Library  Browser

*** Variables ***
${URL}  https://www.decathlon.fr/
${SEARCH}  ballon
${expected text}  Comment ça marche?  

*** Keywords ***
I am on the homepage
    Open Browser  ${URL}  
    Get Element States  id=didomi-notice-agree-button  contains  visible
    Click   selector=id=didomi-notice-agree-button
    Get Element States  id=didomi-popup  contains  detached
    #Get Element States    id=didomi-notice-agree-button  contains  detached

I go to the login form
    Click    css=.tool--account a

I search for ${SEARCH}
    #Fill Text    selector=input[placeholder='Rechercher un produit, un sport ou une référence']    txt=${SEARCH_TERM}
    Fill Text    xpath=//input[@type='search']    ${SEARCH}
    
    Click   css=#search-bar button[type='submit']
    #Press Keys    css=#search-bar input[type='search]   enter 
    
 

###########################
# Aller dans le menu Services & Voyages
I go to the menu Services & Voyages
    Click  xpath=//span[@class='svelte-1lgf518'][normalize-space()='Services & voyages']

# Dans ce menu, sous menu Seconde Vie, cliquer sur Revendre mon matériel
I click on the submenu Revendre mon materiel
    Click  xpath=//a[@data-cs-override-id="categoryitem_7-seconde-vie-revendre-mon-materiel"]

# Un encard s'affiche sur la droite.
I check the encart
    Get Element States    xpath=//section[@class='drawer svelte-fim9kx open']//div[@class='drawer_content svelte-fim9kx']  contains  visible
    
#S'assurer que les 4 sections de texte sont bien "Identifier ton produit" etc...
I check the 4 sections are here
    
    ${comment ca marche?}=  Get Text    xpath=//div[contains(text(),'Comment ça marche?')] 

    Should Be Equal As Strings      ${comment ca marche?}     ${expected text}  

    
