*** Settings ***
Documentation    Resource com as implementações das KWs da suiteWebTesting
Library          SeleniumLibrary

*** Variables ***
${URL}    http://automationpractice.com

*** Keywords ***
## ---- SETUP
Abrir o Navegador
    Open Browser    browser=firefox
    Maximize Browser Window

## ---- TEARDOWN
Fechar o Navegador
    Close Browser    

## ---- STEPS
Acessar a página home do site Automation Practice
    Go To    ${URL}
    Wait Until Element Is Visible    xpath=//img[contains(@class,'logo img-responsive')]

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    id=search_query_top    ${PRODUTO}
    
Clicar no botão pesquisar
    Click Button    name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    # Wait Until Element Is Visible    xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    Wait Until Element Is Visible    xpath=//img[contains(@alt,'${PRODUTO}')]
    
Adicionar o produto "${PRODUTO}" no carrinho
    Execute JavaScript       window.scrollTo(0,150)
    #Scroll Element Into View     xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    Mouse Over       xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    #Click Element    xpath=//span[contains(.,'Add to cart')]
    Click Element    xpath=/html/body/div/div[2]/div/div[3]/div[2]/ul/li/div/div[2]/div[2]/a[1]/span
    Wait Until Element Is Visible    xpath=//span[contains(.,'Proceed to checkout')]
    Click Element    xpath=//span[contains(.,'Proceed to checkout')]

Conferir se o produto "${PRODUTO}" foi adicionado no carrinho
    Wait Until Element Is Visible    xpath=(//a[contains(.,'${PRODUTO}')])[4]