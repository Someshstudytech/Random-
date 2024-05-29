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
    set selenium speed   4
#selecting from dropdowns/list
    select from list by label    DateOfBirthDay  6
    select from list by index    DateOfBirthMonth  6   #june
    select from list by value   DateOfBirthYear    1996

## same like for unselect if we have selected multiple value from list
#dropdown - single select
#list - multiple select

*** Keywords ***
OpenBrowserwithurl
    Open Browser    ${url}  ${browser}