*** Settings ***
Library    SeleniumLibrary


*** Variables ***



*** Keywords ***
Verify Product Added
    wait until page contains    Added to Cart

Proceed To Checkout
    click button                xpath=//*[@id="sc-buy-box-ptc-button"]/span/input
