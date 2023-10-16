*** Settings ***
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/SignIn.robot


*** Variables ***


*** Keywords ***

Login
        [Arguments]    ${Email}    ${Password}
        SignIn.Login with valid credentials     ${Email}    ${Password}

Search for product
        LandingPage.Load
        TopNav.Search For Products
        SearchResults.Verify Search Complete


Select Product from search results
        SearchResults.Click Product Link
        Product.Verify Page Loaded

Add Product to cart
        Product.Add To Cart
        Cart.Verify Product Added

Begin Checkout
        Cart.Proceed To Checkout
        SignIn.Verify Page Loaded

