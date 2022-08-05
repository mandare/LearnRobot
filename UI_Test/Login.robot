*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
*** Test Cases ***
Login
    [Tags]    DEBUG
    open browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login  chrome
    maximize browser window
    click button    id=details-button
    click link      id=proceed-link
    input text      name=txtUsername    Admin
    input text      xpath=//input[@id='txtPassword']      admin123
    click button    css=input#btnLogin
    sleep           2s
    page should contain link            Dashboard           timeout=5
    element text should be              link=Dashboard      Dashboard
    close all browsers

*** Keywords ***
Provided precondition
    Setup system under test