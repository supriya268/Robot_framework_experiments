*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url}       https://www.google.com
${browser}   Chrome


${urlb}       https://www.bing.com
${browser}   Chrome


*** Test Cases ***
TC1
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window

    sleep   2

    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${urlb}
    Maximize Browser Window

    switch browser    1
    ${title1}=  get title
    log to console  ${title1}
    sleep    2

    switch browser   2
    ${title2}=  get title
    log to console  ${title2}

    sleep   3

    switch browser    1
    ${title1}=  get title
    log to console  ${title1}
    sleep    2
