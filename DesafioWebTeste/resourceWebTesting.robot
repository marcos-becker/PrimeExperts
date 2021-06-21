*** Settings ***
Documentation    Resource com as implementações das KWs da suiteWebTesting
Library          SeleniumLibrary

*** Variables ***
${URL}    http://automationpractice.com
${e-mail}    marcos.silva@testemail_8.com
${nome}     Marcos
${Sobrenome}    Silva
${senha}    12345
${endereço}     Av Sorte Grande
${numero}    333
${bairro}    Hortolandia
${cidade}    Cidade de Deus
${cep}    98765
${fone}    (51)98765432
${referencia}    Casa da Vó

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
    Wait Until Element Is Visible    xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    Wait Until Element Is Visible    xpath=//img[contains(@alt,'${PRODUTO}')]
    
Adicionar o produto "${PRODUTO}" no carrinho
    Execute JavaScript       window.scrollTo(0,150)
    Scroll Element Into View     xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    Mouse Over       xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    Click Element    xpath=//span[contains(.,'Add to cart')]
    Click Element    xpath=/html/body/div/div[2]/div/div[3]/div[2]/ul/li/div/div[2]/div[2]/a[1]/span
    Wait Until Element Is Visible    xpath=//span[contains(.,'Proceed to checkout')]
    Click Element    xpath=//span[contains(.,'Proceed to checkout')]

Conferir se o produto "${PRODUTO}" foi adicionado no carrinho
    Wait Until Element Is Visible    xpath=(//a[contains(.,'${PRODUTO}')])[4]

##Caso 2
Conferir mensagem "No results were found for your search "itemNãoExistente"
     Wait Until Element Is Visible    xpath=//p[contains(@class,'alert alert-warning')]

##Caso 3
Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    #Go To    ${URL}
    #Scroll Element Into View    xpath=//img[contains(@class,'logo img-responsive')]
    Mouse Over    xpath=/html/body/div/div[1]/header/div[3]/div/div/div[6]/ul/li[1]/a
    Wait Until Element Is Visible    xpath=(//a[contains(@title,'Summer Dresses')])[1]

Clicar na sub categoria "Summer Dresses"
    Click Element    xpath=/html/body/div/div[1]/header/div[3]/div/div/div[6]/ul/li[1]/ul/li[2]/ul/li[3]/a

Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
    Wait Until Element Is Visible    xpath=(//div[@class='product-count'])[1]
    
#Caso 4
Acessar a página home do site
    Go To    ${URL}
    Wait Until Element Is Visible    xpath=//img[contains(@class,'logo img-responsive')]

Clicar em "Sign in"
    Click Element    xpath=/html/body/div/div[1]/header/div[2]/div/div/nav/div[1]/a

Informar um e-mail válido
    Input Text     id=email_create   ${e-mail}

Clicar em "Create an account"
    Click Element    xpath=//*[@id="SubmitCreate"]

Preencher os dados obrigatórios
    Wait Until Element Is Visible    xpath=//h3[@class='page-subheading'][contains(.,'Your personal information')]
    Click element    xpath=(//input[@value='1'])[1]
    Input Text    id=customer_firstname    ${nome}
    Input Text    id=customer_lastname    ${sobrenome}
    Input Text    id=passwd    ${senha}
    Click Element    id=days
    Mouse Over    id=days
    Click Element    xpath=/html/body/div/div[2]/div/div[3]/div/div/form/div[1]/div[6]/div/div[1]/div/select/option[19]
    Click Element    id=months
    Mouse Over    id=months
    Click Element    xpath=/html/body/div/div[2]/div/div[3]/div/div/form/div[1]/div[6]/div/div[2]/div/select/option[3]
    Click Element    id=years
    Mouse Over    id=years
    Click Element    xpath=/html/body/div/div[2]/div/div[3]/div/div/form/div[1]/div[6]/div/div[3]/div/select/option[42]
    Input Text    id=firstname    ${nome}
    Input Text    id=lastname    ${sobrenome}
    Input Text    id=address1    ${endereço} num: ${numero}
    Input Text    id=address2    ${bairro}
    Input Text    id=city    ${cidade}
    Click Element    id=id_country
    Mouse Over    id=id_country
    Click Element    xpath=/html/body/div/div[2]/div/div[3]/div/div/form/div[2]/p[9]/div/select/option[2]
    Click Element    id=id_state
    Mouse Over    id=id_state
    Click Element    xpath=/html/body/div/div[2]/div/div[3]/div/div/form/div[2]/p[7]/div/select/option[6]
    Input Text    id=postcode    ${cep}
    Input Text    id=phone_mobile    ${fone}
    Input Text    id=alias    ${referencia}

Submeter cadastro
    Click Element    xpath=//span[contains(.,'Register')]

Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible    xpath=//*[@id="cart_title"]