*** Settings ***
Resource    ./PageObjects/LogInPage.robot
Resource    ./PageObjects/LogOutPage.robot

*** Keywords ***
LogIn
    [Arguments]    ${user}    ${password}
    LogInPage.login    ${user}    ${password}
LogOut 
    LogOutPage.logout
