*** Settings ***
Documentation  keywords for Zero banking Apps
Library  SeleniumLibrary
Resource  Variable.robot


*** Keywords ***

Get to login page
     Open Browser  ${URL}  ${BROWSER}
     Maximize Browser Window
     Wait And Click Element    ${LOGIN_BTN}

Valid login for zerobank Apps
  Wait And Input Text    ${LOGIN}    ${USERNAME}
  Wait And Input Text    ${USER_PASSWD}    ${PASSWORD}
  Wait And Click Element    ${SIGN_BTN}
  Go Back
  
Login to transfer funds page
  Wait And Input Text    ${LOGIN}    ${USERNAME}
  Wait And Input Text    ${USER_PASSWD}    ${PASSWORD}
  Wait And Click Element    ${SIGN_BTN}
  Go Back
  Wait And Click Element    ${TRANSFERFUNDS_BTN}
  
Login to pay bills page
  Wait And Input Text    ${LOGIN}    ${USERNAME}
  Wait And Input Text    ${USER_PASSWD}    ${PASSWORD}
  Wait And Click Element    ${SIGN_BTN}
  Go Back
  Wait And Click Element    ${TRANSFERFUNDS_BTN}
  Wait And Click Element    ${PAYBILLS_BTN}

Wait And Click Element
   [Documentation]  Wait for element to be enabled before clicking
   [Arguments]  ${selector}  ${timeouts}=10s
   Wait Until Element Is Enabled    ${selector}
   Click Element  ${selector}

Wait And Input Text
   [Documentation]  Wait for element to be enabled before inputing text
   [Arguments]  ${selector}  ${text}  ${timeouts}=10s
   Wait Until Element Is Enabled    ${selector}
   Input Text  ${selector}  ${text}