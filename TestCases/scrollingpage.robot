*** Settings ***
Library  SeleniumLibrary
Resource  ../TestCases/resources.robot

*** Variables ***
${url}        https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}   Chrome

*** Test Cases ***
Scroll
    ${titlef}=  launchBrowser  ${url}  ${browser}
    log to console   ${titlef}
    log   ${titlef}

#    execute javascript  window.scrollTo(0,1500)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)


*** Keywords ***
