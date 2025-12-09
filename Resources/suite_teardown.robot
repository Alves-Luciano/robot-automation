*** Settings ***
Documentation    Configuração para encerrar a automação
Resource         main.resource

*** Keywords ***
Close Google Chrome Browser
    Run Keyword If Test Passed    Capture Page Screenshot
    IF    ${TEARDOWN}    Close Browser
