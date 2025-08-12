*** Test Cases ***
Meu Primeiro Teste
    [Documentation]    Um teste simples para verificar se tudo está funcionando
    Log    Olá, Robot Framework!
    Should Be Equal As Strings    Robot    Robot
    Should Be Equal As Numbers    2    2

Teste de Matemática
    [Documentation]    Teste básico de operações matemáticas
    ${resultado}=    Evaluate    2 + 2
    Should Be Equal As Numbers    ${resultado}    4
    Log    O resultado de 2 + 2 é ${resultado}
