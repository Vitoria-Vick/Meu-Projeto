*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary


*** Variables ***
${URL}    https://demoqa.com/automation-practice-form


*** Keywords ***

Abrir o navegador 
    Open Browser      browser=Chrome

 
Fechar o navegador 
    Close Browser


Dado que eu acesse o site 
    Go To    url=${URL} 

Quando preencher os campos 
    Input Text            locator=firstName          text=Vitoria 
    Input Text            locator=lastName           text=Silva
    Input Text            locator=userEmail          text= Vitoria@teste.com 
    Input Password        locator=userNumber         password=958360440
    Click Element         locator=//label[@for='gender-radio-2'][contains(.,'Female')]
    Click Element         locator=//label[@for='hobbies-checkbox-2'][contains(.,'Reading')]
    Input Text            locator=currentAddress      text=Teste sucesso 
    Sleep    10