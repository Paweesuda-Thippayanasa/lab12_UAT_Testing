*** Settings ***
Documentation     Resource file for Event Registration test cases.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         localhost:7272
${BROWSER}        Firefox
${DELAY}          0.5
${REGISTER URL}   http://${SERVER}/Lab12/Registration.html
${SUCCESS URL}    http://${SERVER}/Lab12/Success.html
${SCREENSHOT_DIR}   img_test


*** Keywords ***
Open Browser To Event Registration Page
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Set Screenshot Directory    ${SCREENSHOT_DIR}
    Event Registration Page Should Be Open

Event Registration Page Should Be Open
    Title Should Be    Event Registration

Fill Registration Form
    [Arguments]    ${first_name}    ${last_name}    ${organization}    ${email}    ${phone}
    Input Text    id=firstname    ${first_name}
    Input Text    id=lastname    ${last_name}
    Input Text    id=organization    ${organization}
    Input Text    id=email    ${email}
    Input Text    id=phone    ${phone}

Submit Registration
    Click Button    id=registerButton

Success Page Should Be Open
    [Documentation]    Verify that the success page is displayed correctly.
    Location Should Be    ${SUCCESS URL}
    Title Should Be    Success
    Page Should Contain    <h1>Success</h1>
    Page Should Contain    <h2>Thank you for participating in our event</h2>

Verify Error Message
    [Arguments]    ${expected_message}
    Page Should Contain    ${expected_message}

