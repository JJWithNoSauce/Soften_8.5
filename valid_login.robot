*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FORM}    http://localhost:7272/Form.html
${COMPLETE}    http://localhost:7272/Complete.html
${BROWSER}    Chrome


*** Test Cases ***
Test1
    open browser    ${FORM}    browser=Chrome    options=binary_location=r"/home/jjwithnosauce/chrome/linux-131.0.6778.264/chrome-linux64/chrome"
    Input Text	firstname	Somsong	True
    Input Text	lastname	Sandee	True
    Input Text	destination	Europe	True
    Input Text	contactperson	Sodsai Sandee	True
    Input Text	relationship	Mother	True
    Input Text	email	somsong@kkumail.com	True
    Input Text	phone	081-111-1234	True
    Click Button	submitButton
    Title Should Be    Completed
    Location Should Be    ${COMPLETE}
    Page Should Contain    Out agent will contact you shortly.
    Page Should Contain    Thank you for your patient.
