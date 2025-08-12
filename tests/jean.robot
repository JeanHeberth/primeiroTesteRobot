*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Suite Setup    Open Browser    https://the-internet.herokuapp.com/    Chrome
Suite Teardown    Close Browser

*** Variables ***
${BASE_URL}    https://the-internet.herokuapp.com

*** Test Cases ***
Teste de login
    [Documentation]    Testa login com sucesso
    Go To    ${BASE_URL}/login
    Input Text    id=username    tomsmith
    Input Text    id=password    SuperSecretPassword!
    Click Button    css=button[type="submit"]
    Wait Until Page Contains  You logged into a secure area!  timeout=10s
    Page Should Contain    secure area