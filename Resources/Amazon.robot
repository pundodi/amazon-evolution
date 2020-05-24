*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Search for Products
    Go To   http://www.amazon.in
    Wait Until Page Contains  All
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"

Select Product from Search Results
    Sleep   3s

    Click Link      xpath=/html/body/div[1]/div[2]/div[1]/div[2]/div/span[4]/div[2]/div[1]/div/span/div/div/div[2]/h2/a

    Sleep       5s
    #Wait Until Page Contains  Add to Cart

Add Product to Cart
    sleep    5s
    #Input Text  id=twotabsearchtextbox  Python
    #Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Click Button    css#add-to-cart-button
    Wait Until Page Contains  Added to Cart

Begin Checkout
    Click Link      Proceed to Checkout
    Page Should Contain Element  ap_signin1a_pagelet_title
    Element Text Should Be      ap_signin1a_pagelet_title   Sign In
