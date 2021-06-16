*** Settings ***
Documentation  Testes de Loop (FOR)

*** Variables ***
@{FRUTAS}    maça    banana    laranja    uva    abacaxi    pera    melancia    morango

*** Test Cases ***
Teste do FOR IN RANGE (para intervalos)
    Imprimir de 0 a 8
    Imprimir de 10 a 20

Teste do FOR IN (percorrendo listas)
    Imprimir Lista

*** Keywords ***
Imprimir de ${A} a ${B}
    FOR    ${numero}    IN RANGE  ${A}  ${B}
        Log To Console    Estou no Número: ${numero}+10
        ${RESULTADO}      Evaluate    ${numero}+10
        Log To Console    Número+10 = ${RESULTADO}
    END

Imprimir Lista
    FOR    ${fruta}    IN  @{frutas}
        Log To Console    A Fruta da vez é: ${fruta}
    END