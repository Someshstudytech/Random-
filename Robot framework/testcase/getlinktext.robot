*** Settings ***
Library  SeleniumLibrary



*** Variables ***





*** Test Cases ***

getlink
    Open Browser        https://www.facebook.com/       chrome
            ${count}    Get Element Count               xpath://a
    Log To Console      ${count}

    FOR     ${i}        IN RANGE                        ${count}-40
    ${linktext}         get text                        xpath:(//a)[${i+1}]
    Log To Console      ${linktext}

    END


*** Keywords ***