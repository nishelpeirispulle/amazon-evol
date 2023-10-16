*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
        open browser                about:blank    ${BROWSER}


End Web Test
        close browser


Insert Testing Data
        Log     I am setting up the test data...

Cleanup Test Data
        log    I am cleaning up the test data...

