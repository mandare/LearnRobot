*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
*** Test Cases ***
Login
    [Tags]    DEBUG
    open browser    http://secure.smartbearsoftware.com/samples/TestComplete11/WebOrders/Login.aspx  chrome
    maximize browser window
    input text      id=ctl00_MainContent_username    Tester
    input text      xpath=//input[@id='ctl00_MainContent_password']      test
    click button    css=input#ctl00_MainContent_login_button
    sleep           2s
Verify that user has landed to Dashboard page
    element attribute value should be   xpath=//input[@id='ctl00_MainContent_btnDelete']    value     Delete Selected
Logout
    click link      id=ctl00_logout
Verify that user logged out
    element should be visible   id=ctl00_MainContent_username
Closing Browser
    close all browsers
*** Keywords ***
Provided precondition
    Setup system under test