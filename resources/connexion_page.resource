*** Settings ***
Library  Browser

*** Variables ***

${CONNEXION}  [href="/account/dashboard"]
${EMAIL}  lala@gmimi.com


*** Keywords ***
I click on connexion
    Get Element States  css=${CONNEXION}  contains  visible
    Click   css=${CONNEXION}
   
I enter an email
    Fill Text    css=[placeholder="exemple@mail.com"]  txt=${EMAIL}

