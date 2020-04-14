*** Settings ***
Library  SeleniumLibrary
Resource   ../Resources/login_resources.robot
Suite Setup     Open browser
Suite Teardown    close browsers
Test Template    Invalid Login

*** Test Cases ***      username             password
rightuserempty pw     admin@yourstore.com    ${EMPTY}
rightuserwrong pw     admin@yourstore.com    xyz
wronguserwright pw    admin@yoursore.com     admin
wronguserempty pw    admin@yoursore.com     ${EMPTY}
wronguserwrong pw    admin@yoursore.com       xyz
rightuseright pw     admin@yourstore.com     admin




*** Keywords ***
Invalid Login
    [arguments]   ${username}    ${password}
    Input username   ${username}
    Input password   ${password}
    clickloginbutton
    error msg should be visible

valid login
    [arguments]   ${username}    ${password}
    Input username   ${username}
    Input password   ${password}
    clickloginbutton
    success case