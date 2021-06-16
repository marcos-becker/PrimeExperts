*** Settings ***
Documentation  Exercicio de FOR 

*** Variables ***
@{PAISES}    maça    banana    laranja    uva    abacaxi    pera    melancia    morango

*** Test Cases ***
Teste de Contar de 0 a 10
    Imprimir Intervalo    0    10  

Teste de Imprimir Lista
    Imprimir Lista  

*** Keywords ***
Imprimir Intervalo
    [Arguments]    ${A}    ${B}   
    FOR     ${counter}    IN RANGE    ${A}    ${B}+1
        Log To Console    Estou no Número: ${counter}
    END

Imprimir Lista
    FOR     ${pais}    IN    @{PAISES}
        Log To Console    País: ${pais}
    END