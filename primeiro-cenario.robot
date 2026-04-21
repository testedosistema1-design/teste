*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#configuração
${BROWSER}    chrome
${URL}    https://demoqa.com/automation-practice-form
${SELENIUM_SPEED}    0.5

#Locatorns
${INPUT_FIRST_NAME}      id=firstName
${INPUT_LAST_NAME}       id=lastName
${INPUT_EMAIL}           id=userEmail            
${INPUT_PHONE_NUMBER}    id=userNumber
${RADIO_GENDER_MALE}     id=gender-radio-1


#Dados de teste
${NOME}    João    
${SOBRENOME}     Silva
${EMAIL}    teste@teste.com
${TELEFONE}     11974632553      

*** Keywords ***
Abrir o navegador e acessar o site
    Set Selenium Speed    value=${SELENIUM_SPEED}
    Open Browser    url=${URL}    browser=${BROWSER}

Escrever o nome
    Input Text      locator=${INPUT_FIRST_NAME}    text=${NOME} 

Escrever o sobrenome
    Input Text      locator=${INPUT_LAST_NAME}     text=${SOBRENOME}   

Escrever o email
    Input Text      locator=${INPUT_EMAIL}    text=${EMAIL}

Escrever o telefone
    Input Text      locator=${INPUT_PHONE_NUMBER}    text=${TELEFONE}

 Selecionar o genero masculino
    Click Element    locator=${RADIO_GENDER_MALE}

Fechar Navegador
    Close Browser

*** Comments ***
 
TC04-Clicar no genero masculino
    Abrir o navegador e acessar o site
    Selecionar o genero masculino


*** Test Cases ***
TC01-Escrever nome e sobrenome
   Abrir o navegador e acessar o site
   Escrever o nome
   Escrever o sobrenome
   Fechar Navegador

TC02-Escrever nome, e sobrenome e email
   Abrir o navegador e acessar o site
   Escrever o nome
   Escrever o sobrenome
   Escrever o email
   Fechar Navegador

TC03-Escrever nome, e sobrenome,email e telefone
    Abrir o navegador e acessar o site
    Escrever o nome
    Escrever o sobrenome
    Escrever o email
    Escrever o telefone   
    Fechar Navegador


   