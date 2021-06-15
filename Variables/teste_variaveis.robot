*** Settings ***
Documentation    Meu teste de Variaveis

*** Variables ***
${MENSAGEM}    Hello Word!!
${NUMERO}    ${9913139842}

*** Test Cases ***
Meu Teste de Impressão de Mensagem no Terminal
    Logar no meu Terminal uma Mensagem

*** Keywords ***
Logar no meu Terminal uma Mensagem
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}

