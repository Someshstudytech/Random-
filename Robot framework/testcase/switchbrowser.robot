*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://stackoverflow.com/
${Browser}  chrome
${url2}        https://www.browserstack.com/

*** Test Cases ***
multibrowsertest
    Open Browser    ${url}      ${browser}
    maximize Browser Window
    Sleep   5
    Open Browser    ${url2}     ${Browser}
    maximize Browser Window
    sleep    5
    Switch browser      1
    ${gettitle1}        get title
    log to console      ${gettitle1}

    Switch browser     2
     ${gettitle1}        get title
    log to console      ${gettitle1}

*** Keywords ***
