*** Settings ***
Documentation    Teste de Argumentos e Retornos 
*** Variables ***
&{Dados}    nome=marcos    sobrenome=becker    idade=40

*** Test Cases ***
Testar Criação de E-mails
    ${e-mail}    Criar e-mail    ${Dados.nome}    ${Dados.sobrenome}
...    ${Dados.idade}
    Log To Console    O e-mail formado é: ${e-mail}

*** Keywords ***
Criar e-mail
    [Arguments]    ${nome}    ${sobrenome}    ${idade}
    [Return]    ${nome}.${sobrenome}.${idade}@robot.com