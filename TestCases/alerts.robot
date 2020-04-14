*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url}  https://testautomationpractice.blogspot.com/
${browser}   Chrome


*** Test Cases ***
TC1
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window
    click element  xpath://*[@id="HTML9"]/div[1]/button
#    handle alert  dismiss
    handle alert  accept
    handle alert  leave  # this is to leave the alert as it is ,without touching
    close browser


*** Keywords ***
