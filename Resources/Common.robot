*** Settings ***
Library        AppiumLibrary

*** Variables ***
${LOGGIN_BUTTON}               id=chat21.android.demo:id/login
${PERMISION_BUTTON}            id = com.android.permissioncontroller:id/continue_button
${POPUP-BUTTON}                //android.widget.Button[@text="Aceptar"]


*** Keywords ***
Open_Chat21
    Open Application    http://localhost:4723/wd/hub   platformName=Android    deviceName=R9PT90W9Q0X    appPackage=chat21.android.demo    appActivity=chat21.android.demo.SplashActivity    automationName=Uiautomator2
    ${ALERT}    Run Keyword And Return Status    Page Should Contain Element    ${PERMISION_BUTTON}
    Run Keyword If     '${ALERT}' == 'True'    Android10OrMore
    Wait Until Page Contains Element    ${LOGGIN_BUTTON}

Android10OrMore
    Wait Until Page Contains Element    ${PERMISION_BUTTON}
    Click Element                       ${PERMISION_BUTTON}
    Wait Until Page Contains Element    ${POPUP-BUTTON}    
    Click Element                       ${POPUP-BUTTON}

Close_Chat21
    Close Application 