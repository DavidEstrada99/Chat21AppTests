*** Settings ***
Resource        ..//Resources/AppDriver.robot
Resource        ..//Resources/Common.robot
Resource        ..//Resources/Models/User.robot
Test Setup      Common.Open_Chat21
Test Teardown   Common.Close_Chat21
Documentation   Chat 21 tests using android 10

*** Test Cases ***
Chat21_LogIn_Test
    [Documentation]    LogIn with valid credentials
    [Tags]             Test1
    AppDriver.LogIn    ${USER.email}    ${USER.password}

Chat21_LogOut_Test
    [Documentation]    Log out the aplicatinon
    [Tags]             Test2
    AppDriver.LogIn    ${USER.email}    ${USER.password}
    AppDriver.LogOut

     