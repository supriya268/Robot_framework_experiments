*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}   https://demo.nopcommerce.com/
${browser}   Chrome



*** Test Cases ***
TC1
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window
    Title Should be   nopCommerce demo store
    Click link   xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    ${"email_txt"}  set variable  id:Email


    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}


    input text  ${"email_txt"}  supriyakaranthmular1@gmail.com
    sleep 5

    Clear Element Text  ${"email_txt"}
    sleep  3
    close browser



*** Keywords ***
