*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}   Chrome
${url}   https://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    LoginKeywords
    close browser





*** Keywords ***
LoginKeywords
    click link  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    input text   xpath://*[@id="Email"]  supriyakaranthmular1@gmail.com
    input text   xpath://*[@id="Password"]  Sup@123
    click element   xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/input
