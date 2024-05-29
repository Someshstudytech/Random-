*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  chrome
${url}  https://demo.nopcommerce.com/register?returnUrl=%2F


*** Test Cases ***
waits
    set selenium timeout     10 seconds
    OpenBrowserwithurl
    wait until page contains   Register
    ${time}  Get Selenium Timeout
    log to console   ${time}
    Maximize Browser Window
#selecting from dropdowns/list
   # sleep  5 seconds
    select from list by label    DateOfBirthDay   5
    select from list by index    DateOfBirthMonth  6   #june
    select from list by value   DateOfBirthYear    1996



*** Keywords ***
OpenBrowserwithurl
    Open Browser    ${url}  ${browser}






     #sleep  5   =this will use only u have to wait for particular step
    ## set selenium speed = thi will use when u want to wait for each step for same time
    #wait unit page contains has timout of 5sec - selenium timeout - we can increase time by using set selenium speed
#Set Selenium Implicit Wait  10 sec if element is not found it will wait 10 sec if found execute imeediately
