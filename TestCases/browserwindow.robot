*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${url}   https://www.google.com
${browser}   Chrome


*** Test Cases ***
TC1
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window

    Go To  https://www.bing.com
    ${loc} =  get Location   # this will give you the current window location
    log to console  ${loc}

    go back
    ${loc}=  get location
    log to console  ${loc}

