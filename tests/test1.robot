*** Settings ***
Library  Browser
Resource  ../resources/homepage_page.resource



*** Test Cases ***
Test 1
   Given I am on the homepage

Test 2 
    Given I am on the homepage
    When I search for ballon


   