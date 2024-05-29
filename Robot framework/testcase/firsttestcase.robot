*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://the-internet.herokuapp.com/login

*** Test Cases ***

Login with correct Username and Password


    Open Browser    ${url}    ${browser}
    LoginToApplication
    Click Link    Logout
    Close Browser


*** Keywords ***
LoginToApplication
    Input Text    username    tomsmith
    Input Text    password    SuperSecretPassword!
    Click Button     class:radius
    Element Should Contain    id=flash    You logged into a secure area!