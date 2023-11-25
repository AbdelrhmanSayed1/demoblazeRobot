*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Test Timeout      1 minutes


*** Test Cases ***
Valid Login
    Open Browser     https://www.demoblaze.com/#    chrome
    Set Window Size    width=1935    height=1090
    Wait Until Element Is Visible             xpath=//*[@id="tbodyid"]/div[1]/div
    Click Element    xpath=//*[@id="tbodyid"]/div[1]/div
    Page should contain         $
    Close Browser

