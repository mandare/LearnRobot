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

Click on Admin->UserManagement->Users and Click on Add button
    Mouse Over  link=Admin
    Sleep  2s
    Mouse Over  link=User Management
    Click Link  link=Users
    Click Button   btnAdd

Add Users Details and Click on Save button
    Select From List By Label    id=systemUser_userType    Admin
    Input Text  id=systemUser_employeeName_empName  Fiona Grace
    Input Text  id=systemUser_userName  abhinay
    Select From List By Value   id=systemUser_status    1
    Input Text  id=systemUser_password  admin123
    Input Text  id=systemUser_confirmPassword  admin123
    Click Button    id= btnSave
    Sleep   2s
    Page Should Contain Link        link=   abhinay
Close Browser
    close all browsers

*** Keywords ***
Provided precondition
    Setup system under test



