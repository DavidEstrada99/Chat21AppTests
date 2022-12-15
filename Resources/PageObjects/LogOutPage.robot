*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PROFILE-BUTTON}              //android.widget.TextView[@text="PROFILE"]
${LOGOUT-BUTTON}               id=chat21.android.demo:id/logout

*** Keywords ***
logout
    Wait Until Page Contains Element        ${PROFILE-BUTTON}
    Click Element    ${PROFILE-BUTTON}
    Wait Until Page Contains Element        ${LOGOUT-BUTTON}
    Click Element    ${LOGOUT-BUTTON}