
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

   capture element screenshot      //div[@class='ps-relative p-speech-bubble--right h100 p24 bblr-lg btlr-lg btrr-lg bg-orange-200 fc-black-600']     C:/Users/patil/PycharmProjects/pythonProject/testcase/ss.png
   capture page screenshot              C:/Users/patil/PycharmProjects/pythonProject/testcase/s2s.png
*** Keywords ***
