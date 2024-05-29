*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  chrome
${url}  https://demo.nopcommerce.com/
${email}  //input[@id='Email']


${Browser1}  firefox
${url1}  https://demo.nopcommerce.com/register?returnUrl=%2F
*** Test Cases ***
logintest
    OpenBrowserwithurl
    OpenBrowserwithurl1
    close all browsers


*** Keywords ***
OpenBrowserwithurl
    Open Browser    ${url}  ${browser}
OpenBrowserwithurl1
    Open Browser    ${url1}  ${browser1}