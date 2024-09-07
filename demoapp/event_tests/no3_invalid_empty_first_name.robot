*** Settings ***
Documentation     Test event registration with empty first name.
Resource          resource.robot
Suite Teardown    Close Browser

*** Test Cases ***
Open Event Registration Page
    Open Browser To Event Registration Page

Empty First Name
    [Documentation]    Test case for leaving the First Name field empty.
    Fill Registration Form    ${EMPTY}    Sodsai    CS KKU    somsri@kkumail.com    081-001-1234
    Submit Registration
    Event Registration Page Should Be Open
    Verify Error Message    Please enter your first name!!
    Capture Page Screenshot    empty_first_name_error.png
