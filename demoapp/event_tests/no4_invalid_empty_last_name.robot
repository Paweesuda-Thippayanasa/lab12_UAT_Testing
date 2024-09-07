*** Settings ***
Documentation     Test event registration with empty last name.
Resource          resource.robot
Suite Teardown    Close Browser

*** Test Cases ***
Open Event Registration Page
    Open Browser To Event Registration Page

Empty Last Name
    [Documentation]    Test case for leaving the Last Name field empty.
    Fill Registration Form    Somsri    ${EMPTY}    CS KKU    somsri@kkumail.com    081-001-1234
    Submit Registration
    Event Registration Page Should Be Open
    Page Should Contain    Please enter your last name!!
    Capture Page Screenshot    empty_last_name_error.png
