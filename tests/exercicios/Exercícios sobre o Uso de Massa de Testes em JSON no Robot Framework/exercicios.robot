*** Settings ***
Library     JSONLibrary
Library     Collections


*** Variables ***
${PATH}     fixtures/dados1.json


*** Test Cases ***
Ex1
    ${json}    Load Json From File    ${PATH}    encoding=utf-8
    Log    ${json}
