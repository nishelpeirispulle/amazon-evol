*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =    xpath=//*[@id="authportal-main-section"]/div[2]/div[2]/div[1]/form/div/div/div/h1

*** Keywords ***
Verify Page Loaded
     page should contain element    ${SIGNIN_MAIN_HEADING}
     element should contain         ${SIGNIN_MAIN_HEADING}    Sign in

Login with valid credentials
     [Arguments]    ${Email}    ${Password}
     Fill "Email" Field     ${Email}
     Fill "Password" Field  ${Password}
     Click "Sign In" Button

Fill "Email" Field
     [Arguments]    ${Email}
     log    Filling Email field with    ${Email}

Fill "Password" Field
     [Arguments]    ${Password}
     log    Filling Email field with    ${Password}

Click "Sign In" Button
     Log    Clicking Sign In Button
