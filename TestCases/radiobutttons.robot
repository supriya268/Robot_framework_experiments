*** Settings ***

Library  SeleniumLibrary


*** Variables ***
${url}   http://www.practiceselenium.com/practice-form.html
${browser}   Chrome



*** Test Cases ***
Testcase1
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window

    Set Selenium Speed  0.5 seconds


    #always for handling radio button we should give name and value
    Select Radio Button  sex  Female
    Select Radio Button  exp  2
    # selecting the chcek box
#    Select Checkbox   name: BlackTea
#    Select Checkbox   name:RedTea
#    Select Checkbox    name:tool

    Checkboxterms
    unselect Checkbox   name:RedTea

    close browser
*** Keywords ***
Checkboxterms
    Select Checkbox   name: BlackTea
    Select Checkbox   name:RedTea
    Select Checkbox    name:tool
