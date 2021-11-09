*** Settings ***

Library    SeleniumLibrary    run_on_failure=Nothing

*** Variables ***

${URL}		https://www.saucedemo.com
${DELAY}	0.1

*** Test Cases ***

Prepare Browser
    Open Browser  ${URL}  Chrome
    Maximize Browser Window
    Set Selenium Speed    ${DELAY} 

Login    
    Wait Until Page Contains Element    id=login-button
    Input Text	id=user-name	standard_user
    Input Text	id=password	secret_sauce
    Click Element	id=login-button        

Add to Cart
    Click Element	id=add-to-cart-sauce-labs-backpack  

Checkout
    Click Element	//*[@id="shopping_cart_container"]/a
    Click Element	//*[@id="checkout"]
    Input Text		//*[@id="first-name"]	John
    Input Text		//*[@id="last-name"]	Doe
    Input Text		//*[@id="postal-code"]	10001
    Click Element	//*[@id="continue"]
    Click Element	//*[@id="finish"]

Verify Purchase
    Page Should Contain		Your order has been dispatched

Close Browser
    Sleep  2s
    Close Browser 
