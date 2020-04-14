*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}   http://demowebshop.tricentis.com/register
${browser}   Chrome



*** Test Cases ***
Regtest
#    #to get the speed
#    ${speed}  get selenium speed
#    log to console    ${speed}
#    ${time}  get selenium timeout  #this takes 5sec as the actual time
#    log to console    ${time}
    Create Webdriver  ${browser}  executable_path=/home/shamanth/PycharmProjects/Test_robot_1/chromedriver
    Go To  ${url}
    Maximize Browser Window
    set selenium timeout  10  # this will make to wait untill it find what next statement is looking for till 10s
    wait until page contains   Register  #by default it'll waitt for 5 sec

#below will make all statment will execute with the delay of 3sec
#    Set Selenium Speed  1.5 seconds
#    sleep   3

    ${Implicitwait}  get selenium implicit wait  #this takes 5sec as the actual time
    log to console    ${Implicitwait}
    set selenium implicit wait   10 seconds

    select radio button  Gender  M


    input text  id:FirstName   John
    input text  id:LastName     rquel
    input text  id:Email     Johnrquel7@gmail.com
    input text  id:Password    john789
    input text  id:ConfirmPassword   john789

    click element  id:register-button
    click element   xpath:/html/body/div[4]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
#    ${time}  get selenium timeout
#    log to console    ${time}
#
#    ${speed}  get selenium speed
#    log to console    ${speed}

    ${Implicitwait}  get selenium implicit wait  #this takes 5sec as the actual time
    log to console    ${Implicitwait}