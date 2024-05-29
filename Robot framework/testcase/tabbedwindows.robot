*** Settings ***
Library  SeleniumLibrary


*** Variables ***

${url}      https://demo.automationtesting.in/Windows.html
${browser}     chrome
${cbtn}    //a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
*** Test Cases ***
tabbedwindows
    Openbrowserwithurl
    click button        ${cbtn}
    sleep  5
    ${windowhandles}        Get Window Titles
    log to console       ${windowhandles}
    switch window      ${windowhandles}[0]

    sleep  5
    click button        ${cbtn}
    switch window       ${windowhandles}[1]
    click element       //span[normalize-space()='Downloads']
    sleep  5
    close all browsers
*** Keywords ***
Openbrowserwithurl
    open browser    ${url}      ${Browser}