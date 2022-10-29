*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  Keywords.robot
Resource  Variable.robot
Suite Teardown  Close All Browsers


*** Test Cases ***
Verify valid login
  Valid login for zerobank Apps

Verify that user is on the transfer funds page
  #[Tags]  jacob
  Login to transfer funds page
  Capture Page Screenshot


Verify that user is on a pay bills page
  Login to pay bills page
  Capture Page Screenshot


