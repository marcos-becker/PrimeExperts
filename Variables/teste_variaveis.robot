*** Settings ***
Documentation    Meu teste de Variaveis

*** Variables ***
${MENSAGEM}    Hello Word!!
${NUMERO}    ${9913139842}
${BOLLEAN}    ${true}
# {BOLLEAN}    ${false}

&{PESSOA}    nome=Marcos    sobrenome=Becker    idade=40
@{FRUTAS}    BANANA    MAÇA    LARANJA


*** Test Cases ***
Meu Teste de Impressão de Mensagem no Terminal
    Logar no meu Terminal uma Mensagem
Meu teste de Impressão de PESSOA
    

*** Keywords ***
Logar no meu Terminal uma Mensagem
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}

Logar no meu Terminal uma PESSOA
    Log To Console    ${\n}
    Log To Console    ${PESSOA}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade}
    
Logar no meu Terminal uma Lista de Frutas
    ${nova_fruta}    Set Variable    Morango
    Log To Console    ${\n}
    Log To Console    ${FRUTAS}
    Log Many          ${FRUTAS}
    Log To Console    ${nova_fruta}