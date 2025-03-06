*** Settings ***
Library  Browser
Resource  ../resources/homepage_page.resource
Resource  ../resources/search_page.resource
Resource    ../resources/connexion_page.resource
Resource  ../resources/cart_page.resource
Resource  ../resources/product_page.resource
Test Setup  Given I am on the homepage


*** Test Cases ***
Test 1
   No Operation

Test 2 
    
    When I search for "ballon"
    Then I am on the search for "ballon"

Test 3
    
    When I click on connexion
    Then I enter an email
    And I have an connexion error message

Test 4 
    
    When I search for ballon
    Then I am on the search for "ballon"
    And I check that the sort list is by "Meilleures ventes"
    When I sort the list by "Note des clients"
    #Then I check that the sort list is by "Note des clients"

    
Test 5
    When I search for ballon
    Then I am on the search for "ballon"
    When I sort the list by "Note des clients"
    And I open the first product page
    Then I am on the product page for "Un ballon d'entraînement et de match au design inspiré du ballon officiel de l'UWCL."
    When I add the product to the cart
    Then the product is added to the cart successfully
    When I go to the cart
    Then the cart is displayed
    And there are "1" product(s) in the cart
    And the product "Un ballon d'entraînement et de match au design inspiré du ballon officiel de l'UWCL." is in the cart 
   
Test 8
    When I search for ballon
    Then I am on the search page for "ballon"
    And The sellers are displayed correctly
    
   