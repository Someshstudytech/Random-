*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  chrome
${url}  https://demo.nopcommerce.com/
${email}  //input[@id='Email']

*** Test Cases ***
logintest
    OpenBrowserwithurl
    Maximize Browser Window
    Title Should Be     nopCommerce demo store
    Click Link       //a[normalize-space()='Log in']
    Element Should Be Visible   ${email}
    Element Should Be Enabled   ${email}
    Input Text  ${email}    JohnDavid@gmail.com
    sleep   5
    Clear Element Text  ${email}
    sleep   5

*** Keywords ***
OpenBrowserwithurl
    Open Browser    ${url}  ${browser}