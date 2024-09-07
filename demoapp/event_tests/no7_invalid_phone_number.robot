*** Settings ***
Documentation     Test event registration with invalid phone number.
Resource          resource.robot
Suite Teardown    Close Browser

*** Test Cases ***
Open Event Registration Page
    Open Browser To Event Registration Page

Invalid Phone Number
    [Documentation]    Test case for providing an invalid phone number.
    Fill Registration Form    Somsri    Sodsai    CS KKU    somsri@kkumail.com    1234
    Submit Registration
    Event Registration Page Should Be Open
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678
    Capture Page Screenshot    invalid_phone_number_error.png
