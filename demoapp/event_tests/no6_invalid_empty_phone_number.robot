*** Settings ***
Documentation     Test event registration with empty phone number.
Resource          resource.robot
Suite Teardown    Close Browser

*** Test Cases ***
Open Event Registration Page
    Open Browser To Event Registration Page

Empty Phone Number
    [Documentation]    Test case for leaving the Phone Number field empty.
    Fill Registration Form    Somsri    Sodsai    CS KKU    somsri@kkumail.com    ${EMPTY}
    Submit Registration
    Event Registration Page Should Be Open
    Page Should Contain    Please enter your phone number!!
    Capture Page Screenshot    empty_phone_number_error.png
