*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../Resources/scope.robot
*** Test Cases ***
Valid Login
    Open Browser     ${URL}    chrome
    Click Element    id=login2
    Wait Until Element Is Visible    xpath=//*[@id="logInModal"]/div/div/div[3]/button[2]
    Input Text    id=loginusername    ${USER_NAME}
    Input Text    id=loginpassword    ${PASSWORD}
    Click Element    xpath=//*[@id="logInModal"]/div/div/div[3]/button[2]
    Close Browser