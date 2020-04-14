*** Settings ***
Library  SeleniumLibrary
Resource  ../TestCases/resources.robot


*** Variables ***
${url}    http://newtours.demoaut.com/
${browser}   Chrome

*** Test Cases ***
Userdefinedlist
    ${titlef}=  launchBrowser  ${url}  ${browser}
    log to console   ${titlef}
    log   ${titlef}
    input text   name: userName   mercury
    input text   name:password    mercury

    close browser






