*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${SERVER}         www.google.com
${BROWSER}        %{BROWSER}
${LOGIN URL}      https://${SERVER}/

*** Keywords ***
Open Browser To Google Page
    Open Browser    ${LOGIN URL}    ${BROWSER}

Login Page Should Be Open
    Title Should Be    Google

