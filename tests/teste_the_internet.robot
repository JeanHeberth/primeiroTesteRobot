*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Suite Setup    Open Browser    https://the-internet.herokuapp.com/    Chrome
Suite Teardown    Close Browser

*** Variables ***
${BASE_URL}    https://the-internet.herokuapp.com

*** Test Cases ***
Teste de Login Válido
    [Documentation]    Testa login com credenciais válidas
    Go To    ${BASE_URL}/login
    Input Text    id=username    tomsmith
    Input Text    id=password    SuperSecretPassword!
    Click Button    css=button[type='submit']
    Wait Until Page Contains    You logged into a secure area!    timeout=10s
    Page Should Contain    secure area
    
Teste de Login Inválido
    [Documentation]    Testa login com credenciais inválidas
    Go To    ${BASE_URL}/login
    Input Text    id=username    usuario_invalido
    Input Text    id=password    senha_invalida
    Click Button    css=button[type='submit']
    Page Should Contain    Your username is invalid!    timeout=30s

Teste de Checkbox
    [Documentation]    Testa funcionalidade de checkbox
    Go To    ${BASE_URL}/checkboxes
    # Primeiro checkbox - verificar estado inicial e clicar se necessário
    ${is_checked}=    Run Keyword And Return Status    Checkbox Should Be Selected    xpath=(//input[@type='checkbox'])[1]
    Run Keyword If    not ${is_checked}    Click Element    xpath=(//input[@type='checkbox'])[1]
    Sleep    1s
    Checkbox Should Be Selected    xpath=(//input[@type='checkbox'])[1]
    
    # Segundo checkbox - verificar estado inicial e clicar se necessário  
    ${is_checked2}=    Run Keyword And Return Status    Checkbox Should Be Selected    xpath=(//input[@type='checkbox'])[2]
    Run Keyword If    not ${is_checked2}    Click Element    xpath=(//input[@type='checkbox'])[2]
    Sleep    1s
    Checkbox Should Be Selected    xpath=(//input[@type='checkbox'])[2]    timeout=30s

Teste de Dropdown 
    [Documentation]    Testa seleção em dropdown
    Go To    ${BASE_URL}/dropdown
    Select From List By Label    id=dropdown    Option 1
    List Selection Should Be    id=dropdown    Option 1
    Select From List By Label    id=dropdown    Option 2
    List Selection Should Be    id=dropdown    Option 2

Teste de Upload de Arquivo
    [Documentation]    Testa upload de arquivo
    Go To    ${BASE_URL}/upload
    # Criar um arquivo de teste
    ${test_file}=    Set Variable    ${CURDIR}/test_file.txt
    Create File    ${test_file}    Conteúdo de teste para upload
    
    # Fazer upload do arquivo
    Choose File    id=file-upload    ${test_file}
    Click Button    id=file-submit
    
    # Verificar se o upload foi bem-sucedido
    Wait Until Page Contains    File Uploaded!    timeout=30s
    Page Should Contain    test_file.txt
    
    [Teardown]    Remove File    ${test_file}