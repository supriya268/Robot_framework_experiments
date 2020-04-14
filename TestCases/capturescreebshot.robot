*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}   https://opensource-demo.orangehrmlive.com/
${browser}   Chrome


*** Test Cases ***
TC1
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window

    capture element screenshot  xpath://*[@id='divLogo']/img  /home/shamanth/PycharmProjects/Test_robot_1/logo.png
    capture page screenshot   page.png