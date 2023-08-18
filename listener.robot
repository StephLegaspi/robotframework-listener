*** Settings ***
Library           SeleniumLibrary   event_firing_webdriver=${CURDIR}/RobotFrameworkListener.py
Suite Teardown    Close Browser


*** Variables ***
${URL}                      https://demo.nopcommerce.com/
${searchLocator}            //input[@id='small-searchterms']


*** Test Cases ***
Test Case For Event Firing And Listener
    Open ${URL} in the browser chrome
    Enter text in the input box


*** Keywords ***
Open ${URL} in the browser ${browser_name}
    open browser    https://demo.nopcommerce.com/       ${browser_name}

Enter text in the input box
    sleep   5
    Input Text    ${searchLocator}    sample text
