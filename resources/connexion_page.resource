*** Settings ***
Library  Browser

*** Variables ***

${CONNEXION}  [href="/account/dashboard"]
${EMAIL}  lala@gmimi;com


*** Keywords ***
I click on connexion
    Get Element States  css=${CONNEXION}  contains  visible
    Click   css=${CONNEXION}
   
I enter an email
    Fill Text    css=[placeholder="exemple@mail.com"]  txt=${EMAIL}
    Click    selector=id=lookup-btn

I have an connexion error message
    Get Element States  css=.textfield-error-message  contains  visible
    #Get Text    css=.vtmn-typo_font-weight--regular vtmn-typo_text-3 textfield-error-message  contains  "Veuillez entrer un format d'email valide (ex : bonjour@mail.com)"