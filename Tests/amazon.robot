*** Settings ***
Documentation  This is some basic info about the whole suite
Resource        ../Resources/Amazon.robot
Resource        ../Resources/Common.robot
Documentation   This is some basic info about the whole suite
# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazon.robot
Suite Setup    Insert Testing Data
Suite Teardown    Cleanup Testing Data
Test Setup       Begin Web Test
Test Teardown    End Web Test


*** Variables ***

*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search for Products

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout

