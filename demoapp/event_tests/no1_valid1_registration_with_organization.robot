*** Settings ***
Documentation     Test event registration with organization filled.
Resource          resource.robot
Suite Teardown    Close Browser

*** Test Cases ***
Open Event Registration Page
    Open Browser To Event Registration Page

Register Success
    Fill Registration Form    Somsri    Sodsai    CS KKU    somsri@kkumail.com    081-001-1234
    Submit Registration
    Success Page Should Be Open
