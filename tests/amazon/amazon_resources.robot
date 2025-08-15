*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}                              https://www.amazon.com.br
${MENU_ELETRONICOS}                 //a[text()="Eletrônicos"]
${TITULO_DA_PAGINA_ELETRONICOS}     //h2/span[text()="Eletrônicos e Tecnologia"]
${COMPUTADORES_ELETRONICOS}         //a/span[text()="Computadores e Informática"]
${CAMPO_DE_PESQUISA}                //input[@id="twotabsearchtextbox"]
${BOTAO_DE_PESQUISA}                //input[@id="nav-search-submit-button"]
${RESULTADO_DA_PESQUISA}            //h2[text()="Resultados"]



*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window


Fechar o navegador
    Close Browser


Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}


Entrar no menu "Eletronicos"
    Click Element   ${MENU_ELETRONICOS}


Verificar se o título da página fica "Eletrônicos e Tecnologia"
    Wait Until Element Is Visible     ${TITULO_DA_PAGINA_ELETRONICOS}


Verificar se aparece a categoria "Computadores e Informática"
    Wait Until Element Is Visible     ${COMPUTADORES_ELETRONICOS}

Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Input Text      ${CAMPO_DE_PESQUISA}    Xbox Series S

Clicar no botão de pesquisa
    Click Element    ${BOTAO_DE_PESQUISA}
    Wait Until Element Is Visible     ${BOTAO_DE_PESQUISA}

Verificar o resultado da pesquisa, se está listando o produto pesquisado
    Wait Until Element Is Visible     ${RESULTADO_DA_PESQUISA}
