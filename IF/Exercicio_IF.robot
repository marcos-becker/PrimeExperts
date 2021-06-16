*** Settings ***
Documentation  Testes de Condição (IF)

*** Variables ***
#@{PAISES}    Argentina    Chile    Brasil    Uruguai    Brasil    Chile     Brasil    

*** Test Cases ***
Teste de 5 ou 8 na Lista 0 a 10
    Imprimir 5 ou 8

*** Keywords *** **

Imprimir 5 ou 8
    Log To Console    ${\n}
    FOR    ${numero}    IN RANGE    0    11
            IF    ${numero} == 5 or ${numero} == 8
                Log To Console    Numero: ${numero}
            END
    END
    