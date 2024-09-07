*** Settings ***
Documentation     Test event registration with empty first name, last name, and email.
Resource          resource.robot
Suite Teardown    Close Browser

*** Test Cases ***
Open Event Registration Page
    Open Browser To Event Registration Page

Empty First Name and Last Name
    [Documentation]    Test case for leaving both First Name and Last Name fields empty.
    Fill Registration Form    ${EMPTY}    ${EMPTY}    CS KKU    somsri@kkumail.com    081-001-1234
    Submit Registration
    Event Registration Page Should Be Open
    Page Should Contain    Please enter your name!!
    Capture Page Screenshot    empty_first_and_last_name_error.png

Empty Email
    [Documentation]    Test case for leaving the Email field empty.
    Fill Registration Form    Somsri    Sodsai    CS KKU    ${EMPTY}    081-001-1234
    Submit Registration
    Event Registration Page Should Be Open
    Page Should Contain    Please enter your email!!
    Capture Page Screenshot    empty_email_error.png
