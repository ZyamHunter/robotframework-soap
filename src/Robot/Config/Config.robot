*** Settings ***
Library     OperatingSystem


*** Keywords ***
Criar conexão
    ${ENVS}    Create Dictionary
    ...    WSDL_URL=http://www.dneonline.com/calculator.asmx?WSDL
    ...    wsdl_brazilian_post_office=https://apps.correios.com.br/SigepMasterJPA/AtendeClienteService/AtendeCliente?wsdl

    Set Global Variable    ${ENVS}    ${ENVS}

Encerrar conexão
    Log To Console    Requisição finalizada
