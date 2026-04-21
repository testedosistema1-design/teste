*** Settings ***
Library    SeleniumLibrary
Library    string
Test Setup
Test Teardown
Test Tags
Documentation    esse é o meu projeto

*** Variables ***
${variavel}    carro
${variavel2}    moto    
${variavel3}    caminhao
@{lista1}    teste1    teste2    teste3
@{lista2}    ${variavel}    ${variavel2}    ${variavel3}  

&{dicionario}
...    chave=valor1

&{pessoa}
...    nome=João
...    idade=30            
...    cpf=12345678909
...    veiculo=${variavel}

*** Keywords ***
minha keyword
    Open Browser
    #Click Button
    #Click Element
    minha outra keyword
minha outra keyword
    Open Browser
    #Click Button
    #Click Element

Abrir navegador e acessar o site
    Open Browser    url=https://demoqa.com/automation-practice-form

Escrever nome joao no campo firstName
    Input Text      locator=firstName    text=João

Aguardar 2 segundos
    Sleep    2s

*** Test Cases ***
Meu primeiro caso de teste
   Abrir navegador e acessar o site
   Escrever nome joao no campo firstName
   Aguardar 2 segundos
   




