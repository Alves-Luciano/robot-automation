*** Settings ***
Documentation    Page objects from main shop page

*** Variables ***
&{pageShop}
...        iconCart=shopping_cart_container
...        menuButton=//button[@id='react-burger-menu-btn']
...        logoutButton=//a[@id='logout_sidebar_link']
...        addtoCartBikeLight=//button[@name='add-to-cart-sauce-labs-bike-light']
...        addtoCartTShirt=//button[@name='add-to-cart-sauce-labs-bolt-t-shirt']
...        removeCartBikeLight=//button[@name='remove-sauce-labs-bike-light']
...        removeCartTShirt=//button[@name='remove-sauce-labs-bolt-t-shirt']
...        menuButton=//button[@id='react-burger-menu-btn']
...        menuAbout=//a[@id='about_sidebar_link']

&{pageCheckout}
...        buttonCheckout=//button[@name='checkout']
...        CheckoutInfo=//div[@class='checkout_info']
...        inputFirstName=//input[@id='first-name']
...        inputLastName=//input[@id='last-name']
...        inputZipCode=//input[@id='postal-code']
...        buttonContinue=//input[@id='continue']
...        Summaryinfo=//div[@class='summary_info']
...        buttonFinish=//button[@name='finish']
...        PonyExpress=//img[@class='pony_express']
