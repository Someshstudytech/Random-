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

    ${loc}                get location
    log to console               ${loc}
    Sleep   5
    go to   ${url2}

    ${loc}                 get location
    log to console           ${loc}
    #maximize Browser Window
    sleep    5
    go back
    sleep    5
*** Keywords ***
