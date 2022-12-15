*** Settings ***
Library    AppiumLibrary
*** Variables ***
${LOGIN-EMAIL-TEXTFIELD}       id=chat21.android.demo:id/email
${LOGIN-PASSWORD-TEXTFIELD}    id=chat21.android.demo:id/password
${CONFIRNATION_TEXT}           //android.widget.TextView[@text="HOME"]
${LOGGIN_BUTTON}               id=chat21.android.demo:id/login
${REJECT-BUTTON}               id=android:id/autofill_save_no

*** Keywords ***
login
    [Arguments]    ${USER}    ${PASSWORD}    
    Input Text                             ${LOGIN-EMAIL-TEXTFIELD}           ${USER}
    Input Text                             ${LOGIN-PASSWORD-TEXTFIELD}        ${PASSWORD}
    Click Element                          ${LOGGIN_BUTTON}
    ${ALERT}    Run Keyword And Return Status   Page Should Not Contain Element     ${REJECT-BUTTON} 
    Run Keyword If    '${ALERT}' == 'False'    DoNotSavePassword
    Wait Until Page Contains Element       ${CONFIRNATION_TEXT}

DoNotSavePassword
    Wait Until Page Contains Element       ${REJECT-BUTTON}    
    Click Element                          ${REJECT-BUTTON}
