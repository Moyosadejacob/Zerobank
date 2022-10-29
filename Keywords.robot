*** Settings ***
Documentation  keywords for Zero banking Apps
Library  SeleniumLibrary
Resource  Variable.robot

*** Keywords ***

Valid login for zerobank Apps
  Open Browser  ${URL}  ${BROWSER}
  Click Element    ${LOGIN_BTN} 
  Input Text    ${LOGIN}    ${USERNAME} 
  Input Text    ${USER_PASSWD}    ${PASSWORD} 
  Click Element    ${SIGN_BTN}
  Go Back
  
Login to transfer funds page
  Open Browser  ${URL}  ${BROWSER}
  Click Element    ${LOGIN_BTN} 
  Input Text    ${LOGIN}    ${USERNAME} 
  Input Text    ${USER_PASSWD}    ${PASSWORD} 
  Click Element    ${SIGN_BTN}
  Go Back
  Click Element    ${TRANSFERFUNDS_BTN}
  
Login to pay bills page
   Open Browser  ${URL}  ${BROWSER}
  Click Element    ${LOGIN_BTN} 
  Input Text    ${LOGIN}    ${USERNAME} 
  Input Text    ${USER_PASSWD}    ${PASSWORD} 
  Click Element    ${SIGN_BTN}
  Go Back
  Click Element    ${TRANSFERFUNDS_BTN}
  Click Element    ${PAYBILLS_BTN} 