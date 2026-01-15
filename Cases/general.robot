*** Settings ***
Documentation        Functionality: Buy products on the SauceDemo site
Resource             ${EXECDIR}/Resources/main.resource
Test Setup           Open Google Chrome Browser
Test Teardown        Close Google Chrome Browser

*** Test Cases ***
Buy Sauce Labs Bike Light
    [Documentation]  Perform the purchase of Sauce Labs Bike Light product on SauceDemo website
    ${First Name}  FakerLibrary.First Name
    ${Last Name}   FakerLibrary.Last Name
    ${Zip Code}    FakerLibrary.Postcode
    Login Access
    Click                                ${pageShop.addtoCartBikeLight}
    Wait Until Element Is Visible        ${pageShop.removeCartBikeLight}    ${TIMEOUT}
    Click                                ${pageShop.iconCart}
    Click                                ${pageCheckout.buttonCheckout}
    Wait Until Element Is Visible        ${pageCheckout.CheckoutInfo}           ${TIMEOUT}
    Input                                ${pageCheckout.inputFirstName}         ${First Name}
    Input                                ${pageCheckout.inputLastName}          ${Last Name}
    Input                                ${pageCheckout.inputZipCode}           ${Zip Code}
    Click                                ${pageCheckout.buttonContinue}
    Wait Until Element Is Visible        ${pageCheckout.Summaryinfo}            ${TIMEOUT}
    Click                                ${pageCheckout.buttonFinish}
    Wait Until Element Is Visible        ${pageCheckout.PonyExpress}            ${TIMEOUT}

Buy two itens and remove one
    [Documentation]  Perform the purchase of two products and remove one on SauceDemo website
    ${First Name}  FakerLibrary.First Name
    ${Last Name}   FakerLibrary.Last Name
    ${Zip Code}    FakerLibrary.Postcode
    Login Access
    Click                                ${pageShop.addtoCartBikeLight}
    Click                                ${pageShop.addtoCartTShirt}
    Wait Until Element Is Visible        ${pageShop.removeCartBikeLight}    ${TIMEOUT}
    Wait Until Element Is Visible        ${pageShop.removeCartTShirt}       ${TIMEOUT}
    Click                                ${pageShop.iconCart}
    Click                                ${pageShop.removeCartBikeLight}
    Click                                ${pageCheckout.buttonCheckout}
    Wait Until Element Is Visible        ${pageCheckout.CheckoutInfo}           ${TIMEOUT}
    Input                                ${pageCheckout.inputFirstName}         ${First Name}
    Input                                ${pageCheckout.inputLastName}          ${Last Name}
    Input                                ${pageCheckout.inputZipCode}           ${Zip Code}
    Click                                ${pageCheckout.buttonContinue}
    Wait Until Element Is Visible        ${pageCheckout.Summaryinfo}            ${TIMEOUT}
    Click                                ${pageCheckout.buttonFinish}
    Wait Until Element Is Visible        ${pageCheckout.PonyExpress}            ${TIMEOUT}

Buy Two itens
    [Documentation]  Perform the purchase of two products on SauceDemo website
    ${First Name}  FakerLibrary.First Name
    ${Last Name}   FakerLibrary.Last Name
    ${Zip Code}    FakerLibrary.Postcode
    Login Access
    Click                                ${pageShop.addtoCartBikeLight}
    Click                                ${pageShop.addtoCartTShirt}
    Wait Until Element Is Visible        ${pageShop.removeCartBikeLight}    ${TIMEOUT}
    Wait Until Element Is Visible        ${pageShop.removeCartTShirt}       ${TIMEOUT}
    Click                                ${pageShop.iconCart}
    Click                                ${pageCheckout.buttonCheckout}
    Wait Until Element Is Visible        ${pageCheckout.CheckoutInfo}       ${TIMEOUT}
    Input                                ${pageCheckout.inputFirstName}     ${First Name}
    Input                                ${pageCheckout.inputLastName}      ${Last Name}
    Input                                ${pageCheckout.inputZipCode}       ${Zip Code}
    Click                                ${pageCheckout.buttonContinue}
    Wait Until Element Is Visible        ${pageCheckout.Summaryinfo}        ${TIMEOUT}
    Click                                ${pageCheckout.buttonFinish}
    Wait Until Element Is Visible        ${pageCheckout.PonyExpress}        ${TIMEOUT}

Open About Page
    [Documentation]  Open the About page from the menu
    Login Access
    Click                                ${pageShop.menuButton}
    Click                                ${pageShop.menuAbout}
    Wait Until Location Contains         https://saucelabs.com/    ${TIMEOUT}