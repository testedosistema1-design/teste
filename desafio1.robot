*** Settings ***
Library           SeleniumLibrary


*** Variables ***


*** Keywords ***
Abrir Navegador
    Set selenium speed    0.5s
    Open Browser    url=https://practicetestautomation.com/practice-test-login/    browser=chrome

Inserir Usuario
    Input Text    id=username    text=student

Inserir Senha
    Input Text    id=password    text=Password123

Efetuar Login
    Click Button    id=submit  

Validar redirecionamento
     Location Should Be    https://practicetestautomation.com/logged-in-successfully/

Validar Login com sucesso
     Wait Until Page Contains    Logged In Successfully
     Page Should Contain Element    xpath=//a[text()="Log out"]

Inserir Senha Incorreta
    Input Text    id=password    text=8474644

Inserir Usuario Incorreto
    Input Text    id=username    text=susyaha  

Validar Login com falha
     Wait Until Page Contains    Your username is invalid!
  
*** Test Cases ***
TC01-Efetuar login com sucesso
     Abrir Navegador
     Inserir Usuario
     Inserir Senha   
     Efetuar Login
     Validar redirecionamento
     Validar Login com sucesso

TC02-Efetuar login com falha
     Abrir Navegador
     Inserir Usuario Incorreto
     Inserir Senha Incorreta
     Efetuar Login
     Validar Login com falha