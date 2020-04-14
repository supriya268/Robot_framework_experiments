*** Settings ***
Library    SeleniumLibrary

*** Variables ***


${url}  https://admin-demo.nopcommerce.com/
${browser}  Chrome


*** Keywords ***
Open browser
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window

close browsers
    close all browsers

Input username
    [arguments]  ${username}
    input text   id:Email   ${username}

Input password
    [arguments]  ${password}
    input text   id:Password    ${password}

clickloginbutton
    click element   xpath://*[@class="buttons"]/input

click logout
    click link    xpath:/html/body/div[3]/div[1]/div/div/ul/li[3]/a

error msg should be visible
    page should contain  Login was unsuccessful

success case
    page should contain  Dashboard