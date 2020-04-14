*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url}       http://demo.automationtesting.in/Windows.html
${browser}   Chrome


*** Test Cases ***
TC1
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window

    click element   xpath://*[@id="Tabbed"]/a/button
    select window  title = Sakinalium | Home
    click element  xpath://*[@id="container"]/header/div/div/div[2]/ul/li[4]/a
    sleep  3
    close browser