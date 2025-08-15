*** Settings ***
Documentation     Este é o arquivo de testes do site Amazon.com.br
Resource          amazon_resources.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador


*** Test Cases ***

Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]     Esse teste seleciona o menu eletrônico e verifica a categoria
    ...                 Computadores e Informática
    [Tags]              menus
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletronicos"
    Verificar se o título da página fica "Eletrônicos e Tecnologia"
    Verificar se aparece a categoria "Computadores e Informática"

Caso de teste 02 - Pesquisa de um produto
    [Documentation]     Esse teste verifica a busca de um produto
    [Tags]              busca_produtos
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, se está listando o produto pesquisado