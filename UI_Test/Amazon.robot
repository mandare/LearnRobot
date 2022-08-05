*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Variables ***
${search_text}  mobile

*** Test Cases ***
Search for Product
    Open Browser   https://www.amazon.in/ chrome
    Input Text id=twotabsearchtextbox ${search_text}
    Click Button   xpath=//input[@value='Go']
    Sleep  5s
    Page Should Contain    results for "${search_text}"
    page should contain link            Dashboard           timeout=10
    element text should be              link=Dashboard      Dashboard

Close browser at end
    Close Browser