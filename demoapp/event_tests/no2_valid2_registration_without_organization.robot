*** Settings ***
Documentation     Test event registration without organization field filled.
Resource          resource.robot
Suite Teardown    Close Browser

*** Test Cases ***
Open Event Registration Page
    Open Browser To Event Registration Page

Register Success No Organization Info
    Fill Registration Form    Somsri    Sodsai    ${EMPTY}    somsri@kkumail.com    081-001-1234
    Submit Registration
    Success Page Should Be Open
