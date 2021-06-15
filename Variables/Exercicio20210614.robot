*** Settings ***
Documentation    Meu teste de variáveis

*** Variables ***
&{PESSOA}      nome=Marcos    sobrenome=Becker    idade=40   
...            nacionalidade=Brasileiro    estadoCivil=Casado    escolaridade=Superior Completo
@{FRUTAS}      banana    maça    laranja    pera    abacaxi    


*** Test Cases ***
Meu teste imprimindo um dicionário de PESSOA
    Imprimir lista de PESSOA

*** Keywords ***

Imprimir lista de PESSOA

    Log To Console    ${\n}    
    Log To Console    Nome: ${PESSOA.nome}
    Log To Console    Sobrenome: ${PESSOA.sobrenome}
    Log To Console    Idade: ${PESSOA.idade}
    Log To Console    Nacionalidade: ${PESSOA.nacionalidade} 
    Log To Console    Estado Civil: ${PESSOA.estadoCivil} 
    Log To Console    Escolaridade: ${PESSOA.escolaridade}
