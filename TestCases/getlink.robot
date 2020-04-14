*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}   http://newtours.demoaut.com/
${browser}   Chrome


*** Test Cases ***
LinkCount
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window

    ${Alllinkcount}  get element count  xpath://a
    log to console   ${Alllinkcount}


    :FOR  ${i}  IN RANGE  1  ${Alllinkcount}+1
    \   ${linktext} =  get text  xpath:(//a)[${i}]
    \   log to console   ${linktext}

    close browser