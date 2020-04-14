*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}   Chrome


*** Test Cases ***
LinkCount
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window

    ${row}  get element count  xpath://table[@name="BookTable"]/tbody/tr
    log to console   ${row}

    ${col}  get element count  xpath://table[@name="BookTable"]/tbody/tr[1]/th
    log to console   ${col}
    sleep   2

    ${tdata}   get text       xpath://table[@name="BookTable"]/tbody/tr[5]/td[1]
    log to console  ${tdata}
    sleep   3

#    @{talldata}  get text   xpath://*[@id="HTML1"]/div[1]/table/tbody
#    :FOR    ${i}  IN   @{talldata}
#    \   log to console  ${i}
#
#    table column should contain    xpath://*[@id="HTML1"]/div[1]/table/tbody   2 	Author
#    table row should contain      xpath://*[@id="HTML1"]/div[1]/table/tbody     4    Learn JS
    table cell should contain      xpath://*[@id="HTML1"]/div[1]/table/tbody     5   2  Mukhesh
    table header should contain      xpath://*[@id="HTML1"]/div[1]/table/tbody   Bookname
     close browser