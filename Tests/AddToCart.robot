*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../Resources/scope.robot
*** Test Cases ***
Adding a phone product to the cart
    Open Browser     ${URL}    chrome
    Set Window Size    width=1935    height=1090
    Sleep       1s
    Wait Until Element Is Visible  xpath=//*[@id="tbodyid"]/div[1]/div
    Click Element    xpath=//*[@id="tbodyid"]/div[1]/div
    Wait Until Element Is Visible  //*[@id="tbodyid"]/h3
    Page should contain         $
    Click Element    //*[@id="tbodyid"]/div[2]/div/a
    handle alert    accept
    Click Element    //*[@id="navbarExample"]/ul/li[4]/a
    Page should contain         Total
    Close Browser




