*** Settings ***
Library     SoapLibrary
Library     Collections


*** Keywords ***
Test with Get Data From XML By Tag
    Create SOAP Client    ${ENVS['wsdl_brazilian_post_office']}
    ${response}    Call SOAP Method With XML    src${/}Robot${/}Resources${/}cep.xml
    ${postal_code}    Get Data From XML By Tag    ${response}    cep
    ${city}    Get Data From XML By Tag    ${response}    cidade
    ${street}    Get Data From XML By Tag    ${response}    end
    ${state}    Get Data From XML By Tag    ${response}    uf
    Log To Console    ${postal_code}
    Log To Console    ${city}
    Log To Console    ${street}
    Log To Console    ${state}

Convert XML Response to Dictionary - cep
    Create SOAP Client    ${ENVS['wsdl_brazilian_post_office']}
    ${response}    Call SOAP Method With XML    src${/}Robot${/}Resources${/}cep.xml
    ${result}    Convert XML Response to Dictionary    ${response}
    Log To Console    ${result}

Save XML To File - cep
    Create SOAP Client    ${ENVS['wsdl_brazilian_post_office']}
    ${response}    Call SOAP Method With XML    src${/}Robot${/}Resources${/}cep.xml
    ${response_file}    Save XML To File    ${response}    ${OUTPUT_DIR}    cep_xml
