*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${url}   http://demo.guru99.com/test/simple_context_menu.html
${browser}   Chrome


*** Test Cases ***
TC1
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window

    open context menu  xpath://*[@id="authentication"]/span
    click element  xpath://*[@id="authentication"]/ul/li[7]
    handle alert  accept
    sleep   3

    double click element  xpath://*[@id="authentication"]/button
    handle alert  accept
    sleep   3

    go to  https://testautomationpractice.blogspot.com/
    drag and drop  xpath://*[@id="draggable"]   xpath://*[@id="droppable"]
    sleep  3

    close all browsers

