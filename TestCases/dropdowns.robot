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

#this is used to select value from drop down there are 3 methods
#and that takes name and the value(value in the option)
#    Select from list by value

    Select from list by label  continents  Asia

    sleep  5

    Select from list by index  continents  5


    close browser
*** Keywords ***
Checkboxterms
