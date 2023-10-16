*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Page Loaded
    wait until page contains    Back to results

Add To Cart
    click button                id=add-to-cart-button