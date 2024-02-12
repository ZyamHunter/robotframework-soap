*** Settings ***
Documentation       Arquivo dedicado a organização e chamadas dos casos de teste

Resource            ../Config/Config.robot
Resource            ../TestCases/Calculator.robot
Resource            ../TestCases/Cep.robot

Test Setup          Criar conexão
Test Teardown       Encerrar conexão


*** Test Cases ***
Somar na calculadora
    [Documentation]    Test the addition operation of the calculator service
    [Tags]    soap
    Test Add Operation

Subtrair na calculadora
    [Documentation]    Test the subtraction operation of the calculator service
    [Tags]    soap
    Test Subtract Operation

Dividir na calculadora
    [Documentation]    Test the division operation of the calculator service
    [Tags]    soap
    Test Divide Operation

Multiplicar na calculadora
    [Documentation]    Test the multiplication operation of the calculator service
    [Tags]    soap
    Test Multiply Operation

Operações básicas na calculadora
    [Documentation]    Test complex chained operations (addition, subtraction, multiplication, division) of the calculator service
    [Tags]    soap
    Test Complex Chained Operations

Consultar cep
    [Documentation]    Test with 'Call SOAP Method With XML' and get the response values using ´Get Data From XML By Tag´
    Test with Get Data From XML By Tag

Converter xml para dicionário
    Convert XML Response to Dictionary - cep

Salvar xml em arquivo
    Save XML To File - cep
