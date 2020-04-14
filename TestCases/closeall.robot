*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}   http://demowebshop.tricentis.com/register
${browser}   Chrome


*** Test Cases ***
TC1
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window

    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window
#    Close Browser  # this is used to close the recently opened browser

    #close all Browsers  used to close all the browser that are opened.

    Close All Browsers


*** Keywords ***
