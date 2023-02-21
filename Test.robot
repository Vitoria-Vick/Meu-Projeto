*** Settings ***
Resource        Resource.robot
Test Setup      Abrir o navegador 
Test Teardown   Fechar o navegador  
Documentation    essa suite testa o cadastro



*** Test Cases ***
Cenario -01 acessar o site e preencher os campos
    Dado que eu acesse o site 
     Quando preencher os campos
    # Então consigo me cadastrar com sucesso 