*** Settings ***
Library  Browser
Resource  ../resources/homepage_page.resource
Resource  ../resources/search_page.resource
Resource    ../resources/connexion_page.resource



*** Test Cases ***
Test 1
   Given I am on the homepage

Test 2 
    Given I am on the homepage
    When I search for $SEARCH
    Then I am on the search for $SEARCH

Test 3
    Given I am on the homepage
    When I click on connexion
    Then I enter an email


   

   