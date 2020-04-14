*** Settings ***
Library  SeleniumLibrary



*** Keywords ***
launchBrowser
    [arguments]  ${appurl}  ${browser}
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window
    ${title}=  get title
    [return]  ${title}