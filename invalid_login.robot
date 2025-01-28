*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FORM}    http://localhost:7272/Form.html
${COMPLETE}    http://localhost:7272/Complete.html
${BROWSER}    Chrome


*** Test Cases ***
Test2
    open browser    ${FORM}    browser=Chrome    options=binary_location=r"/home/jjwithnosauce/chrome/linux-131.0.6778.264/chrome-linux64/chrome"
    Input Text	firstname	Somsong	True
    Input Text	lastname	Sandee	True
    Input Text	contactperson	Sodsai Sandee	True
    Input Text	relationship	Mother	True
    Input Text	email	somsong@kkumail.com	True
    Input Text	phone	081-111-1234	True
    Click Button	submitButton
    Location Should Be    ${FORM}
    Page Should Contain    Please enter your destination.
Test3
    open browser    ${FORM}    browser=Chrome    options=binary_location=r"/home/jjwithnosauce/chrome/linux-131.0.6778.264/chrome-linux64/chrome"
    Input Text	firstname	Somsong	True
    Input Text	lastname	Sandee	True
    Input Text	destination	Europe	True
    Input Text	contactperson	Sodsai Sandee	True
    Input Text	relationship	Mother	True
    Input Text	phone	081-111-1234	True
    Click Button	submitButton
    Location Should Be    ${FORM}
    Page Should Contain    Please enter a valid email address.
Test4
    open browser    ${FORM}    browser=Chrome    options=binary_location=r"/home/jjwithnosauce/chrome/linux-131.0.6778.264/chrome-linux64/chrome"
    Input Text	firstname	Somsong	True
    Input Text	lastname	Sandee	True
    Input Text	destination	Europe	True
    Input Text	contactperson	Sodsai Sandee	True
    Input Text	relationship	Mother	True
    Input Text	email	somsong@	True
    Input Text	phone	081-111-1234	True
    Click Button	submitButton
    Location Should Be    ${FORM}
    Page Should Contain    Please enter a valid email address.
Test5
    open browser    ${FORM}    browser=Chrome    options=binary_location=r"/home/jjwithnosauce/chrome/linux-131.0.6778.264/chrome-linux64/chrome"
    Input Text	firstname	Somsong	True
    Input Text	lastname	Sandee	True
    Input Text	destination	Europe	True
    Input Text	contactperson	Sodsai Sandee	True
    Input Text	relationship	Mother	True
    Input Text	email	somsong@kkumail.com	True
    Click Button	submitButton
    Location Should Be    ${FORM}
    Page Should Contain    Please enter a phone number.
Test6
    open browser    ${FORM}    browser=Chrome    options=binary_location=r"/home/jjwithnosauce/chrome/linux-131.0.6778.264/chrome-linux64/chrome"
    Input Text	firstname	Somsong	True
    Input Text	lastname	Sandee	True
    Input Text	destination	Europe	True
    Input Text	contactperson	Sodsai Sandee	True
    Input Text	relationship	Mother	True
    Input Text	email	somsong@kkumail.com	True
    Input Text	phone	191	True
    Click Button	submitButton
    Location Should Be    ${FORM}
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678




