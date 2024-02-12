*** Settings ***
Library     SoapLibrary
Library     Collections


*** Keywords ***
Test Add Operation
    Create SOAP Client    ${ENVS['WSDL_URL']}
    ${result}    Call SOAP Method    Add    ${1}    ${2}
    Should Be Equal As Numbers    ${result}    3

Test Subtract Operation
    Create SOAP Client    ${ENVS['WSDL_URL']}
    ${result}    Call SOAP Method    Subtract    ${5}    ${2}
    Should Be Equal As Numbers    ${result}    3

Test Multiply Operation
    Create SOAP Client    ${ENVS['WSDL_URL']}
    ${result}    Call SOAP Method    Multiply    ${2}    ${3}
    Should Be Equal As Numbers    ${result}    6

Test Divide Operation
    Create SOAP Client    ${ENVS['WSDL_URL']}
    ${result}    Call SOAP Method    Divide    ${10}    ${2}
    Should Be Equal As Numbers    ${result}    5

Test Complex Chained Operations
    Create SOAP Client    ${ENVS['WSDL_URL']}

    ${add_result}    Call SOAP Method    Add    ${2}    ${3}
    Should Be Equal As Numbers    ${add_result}    5

    ${subtract_result}    Call SOAP Method    Subtract    ${10}    ${add_result}
    Should Be Equal As Numbers    ${subtract_result}    5

    ${multiply_result}    Call SOAP Method    Multiply    ${subtract_result}    ${2}
    Should Be Equal As Numbers    ${multiply_result}    10

    ${divide_result}    Call SOAP Method    Divide    ${multiply_result}    ${4}
    Should Be Equal As Numbers    ${divide_result}    2.0
