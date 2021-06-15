*** Settings ***
Documentation    Meu teste de variáveis

*** Variables ***
&{PESSOA}      nome=Marcos    sobrenome=Becker    idade=40   
...            nacionalidade =Brasileiro    estadoCivil=Casado    escolaridade=Superior Completo
@{FRUTAS}      banana    maça    laranja    pera    abacaxi    


*** Test Cases ***
Meu teste imprimindo um dicionário de PESSOA
    Imprimir lista PESSOA

Meu teste imprimindo uma lista de FRUTAS
    Logar no meu terminal uma LISTA DE FRUTAS

*** Keywords ***

Imprimir lista PESSOA

    Log To Console    ${\n}    
    Log To Console    Nome: ${PESSOA.nome} 
    Log To Console    ${\n}    
    Log To Console    Sobrenome: ${PESSOA.sobrenome} 
    Log To Console    ${\n}    
    Log To Console    Idade: ${PESSOA.idade} anos! 
    Log To Console    ${\n}    
    Log To Console    Nacionalidade: ${PESSOA.nacionalidade} 
    Log To Console    ${\n}    
    Log To Console    Estado Civil: ${PESSOA.estadoCivil} 
    Log To Console    ${\n}    
    Log To Console    Escolaridade: ${PESSOA.escolaridade}

Logar no meu terminal uma LISTA DE FRUTAS
    Log To Console     ${\n}
    Log To Console     ${FRUTAS}
    Log Many           ${FRUTAS}
© 2021 GitHub, Inc.