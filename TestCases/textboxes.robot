*** Settings ***

Library  SeleniumLibrary


*** Variables ***
${url}   http://www.practiceselenium.com/practice-form.html
${browser}   Chrome



*** Test Cases ***
Handling Dropdowns and list box
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window

    Set Selenium Speed  0.5 seconds

#List box
#in this also we can use the same methods as dropdown but we have to give the name and the value
#    Select from list by value


    Select from list by label  selenium_commands  Browser Commands
    Select from list by label  selenium_commands  WebElement Commands

    sleep  3

    unselect from list by label  selenium_commands  Browser Commands

    close browser
*** Keywords ***
Checkboxterms
