*** Settings ***
Documentation    This is an amazon site suite
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot
#Suite Setup    Insert Testing Data
Test Setup    Common.Begin Web Test
Task Teardown    Common.End Web Test

#Suite Teardown    Cleanup Test Data

*** Variables ***
${BROWSER} =    edge
${START_URL} =    https://www.amazon.com/
${SEARCH_TERM} =    Ferrari 458
${LOGIN_EMAIL} =    admin@robotrameworktutorial.com
${LOGIN_PASSWORD} =    myPassword1

*** Test Cases ***

Should be able to login
         Amazon.Login       ${LOGIN_EMAIL}      ${LOGIN_PASSWORD}

User can search for products
        [Documentation]             This is a test case
        [Tags]                      current
        Amazon.Search for product



User must sign in to checkout
        [Documentation]             This is a test case
        [Tags]                      smoke
        Amazon.Search for product
        Amazon.Select Product from search results
        Amazon.Add Product to cart
        Amazon.Begin Checkout

