*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url}  https://www.selenium.dev/selenium/docs/api/java/index
${browser}   Chrome


*** Test Cases ***
TC1
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window

    select frame  packageListFrame
    click link    org.openqa.selenium
    unselect frame

    select frame  packageFrame
    click link    WebDriver
    unselect frame
    sleep  3


    select frame  classFrame
    click link    Help
    click link  Index
    unselect frame
    sleep  3

    close browser






*** Keywords ***
