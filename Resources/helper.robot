*** Settings ***
Documentation         Main resource file for common keywords and libraries
Resource            main.resource

*** Keywords ***
Login Access
    Input    ${pageHome.inputUser}       standard_user
    Input    ${pageHome.inputPassword}   %{USER_PASSWORD}
    Click    ${pageHome.btnSignin}
    Wait Until Element Is Visible        ${pageShop.iconCart}    ${TIMEOUT}

Click
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}  ${TIMEOUT}
    Click Element  ${element}

Input
    [Arguments]  ${element}  ${text}
    Wait Until Element Is Visible  ${element}  ${TIMEOUT}
    Input Text   ${element}   ${text}
