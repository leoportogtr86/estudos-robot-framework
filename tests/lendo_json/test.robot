*** Settings ***
Library     JSONLibrary


*** Variables ***
${PATH}     fixtures/data.json


*** Test Cases ***
Leitura de dados de um json
    ${dados}    Load Json From File    ${PATH}    encoding=utf-8
    Log    ${dados['usuarios']}
