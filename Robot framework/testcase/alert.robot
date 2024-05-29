*** Settings ***

Library  SeleniumLibrary
*** Variables ***
${url}  https://only-testing-blog.blogspot.com/2014/01/textbox.html
${Browser}  chrome

*** Test Cases ***
alertvalidation
    Open Browser  ${url}   ${browser}
    click button   //button[normalize-space()='Show Me Confirmation']
    sleep  5
   #handle alert    accept
    #handle alert    dismiss
    handle alert    leave
    sleep  5
    alert should not be present
    close browser


    #for iframe
    #select frame xpath
    #click link
    #unselect iframe

*** Keywords ***
