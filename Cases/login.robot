*** Settings ***
Documentation        Functionality: Login and logout in the SauceDemo site
Resource             ${EXECDIR}${/}Resources${/}main.resource
Test Setup           Open Google Chrome Browser
Test Teardown        Close Google Chrome Browser

*** Test Cases ***
Singin in the account
    [Documentation]       Validando se é possível logar na conta
    Input    ${pageHome.inputUser}       standard_user
    Input    ${pageHome.inputPassword}   %{USER_PASSWORD}
    Click    ${pageHome.btnSignin}
    Wait Until Element Is Visible    ${pageShop.iconCart}

Logout from the account
    [Documentation]       Validando se é possível deslogar da conta
    Input    ${pageHome.inputUser}       standard_user
    Input    ${pageHome.inputPassword}   %{USER_PASSWORD}
    Click    ${pageHome.btnSignin}
    Wait Until Element Is Visible    ${pageShop.iconCart}
    Click    ${pageShop.menuButton}
    Click    ${pageShop.logoutButton}
    Wait Until Element Is Visible    ${pageHome.btnSignin}
