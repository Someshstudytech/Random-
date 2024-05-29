https://demo.nopcommerce.com/register?returnUrl=%2F

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  chrome
${url}  https://demo.nopcommerce.com/register?returnUrl=%2F
${email}  //input[@id='Email']

*** Test Cases ***
logintest
    OpenBrowserwithurl
    Maximize Browser Window
    set selenium speed  2
    # selecting radio buttons
    Select Radio Button  Gender  M
    select radio button     Gender  F

    #selecting unselecting checkboxes
    unselect checkbox  Newsletter
    select checkbox  Newsletter



*** Keywords ***
OpenBrowserwithurl
    Open Browser    ${url}  ${browser}