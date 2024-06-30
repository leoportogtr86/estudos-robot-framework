Para validar partes de uma URL no Robot Framework, você pode usar diversas abordagens, como verificar o URL completo ou partes específicas dele, como o domínio, o caminho ou os parâmetros de consulta. Aqui estão alguns métodos comuns para validar URLs usando a SeleniumLibrary e o BuiltIn Library.

### 1. Verificar a URL Completa

Você pode usar a keyword `Location Should Be` para verificar a URL completa da página atual.

```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EXPECTED_URL}    https://www.example.com/page

*** Test Cases ***
Validar URL Completa
    Open Browser    ${EXPECTED_URL}    chrome
    Location Should Be    ${EXPECTED_URL}
    Close Browser
```

### 2. Verificar o Domínio da URL

Para verificar apenas o domínio, você pode extrair o domínio da URL atual e compará-lo com o valor esperado.

```robot
*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${EXPECTED_DOMAIN}    www.example.com

*** Test Cases ***
Validar Dominio da URL
    Open Browser    https://www.example.com/page    chrome
    ${current_url}=    Get Location
    ${parsed_domain}=    Parse URL    ${current_url}    netloc
    Should Be Equal    ${parsed_domain}    ${EXPECTED_DOMAIN}
    Close Browser
```

### 3. Verificar o Caminho da URL

Para verificar o caminho da URL (o que vem depois do domínio), você pode fazer algo semelhante.

```robot
*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${EXPECTED_PATH}    /page

*** Test Cases ***
Validar Caminho da URL
    Open Browser    https://www.example.com/page    chrome
    ${current_url}=    Get Location
    ${parsed_path}=    Parse URL    ${current_url}    path
    Should Be Equal    ${parsed_path}    ${EXPECTED_PATH}
    Close Browser
```

### 4. Verificar Parâmetros de Consulta na URL

Se você precisa verificar os parâmetros de consulta na URL, você pode fazer isso dividindo a URL e analisando os parâmetros.

```robot
*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${EXPECTED_PARAM_KEY}    id
${EXPECTED_PARAM_VALUE}    123

*** Test Cases ***
Validar Parametros de Consulta na URL
    Open Browser    https://www.example.com/page?id=123    chrome
    ${current_url}=    Get Location
    ${parsed_query}=    Parse URL    ${current_url}    query
    ${params}=    Split String    ${parsed_query}    &
    ${id_param}=    Get From Dictionary    ${params}    ${EXPECTED_PARAM_KEY}
    Should Be Equal    ${id_param}    ${EXPECTED_PARAM_VALUE}
    Close Browser
```

### Usando Keywords Personalizadas para Validação de URLs

Você pode criar keywords personalizadas para validar diferentes partes da URL de forma modular e reutilizável.

```robot
*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${EXPECTED_DOMAIN}    www.example.com
${EXPECTED_PATH}    /page
${EXPECTED_QUERY}    id=123

*** Keywords ***
Validar Dominio
    [Arguments]    ${current_url}    ${expected_domain}
    ${parsed_domain}=    Parse URL    ${current_url}    netloc
    Should Be Equal    ${parsed_domain}    ${expected_domain}

Validar Caminho
    [Arguments]    ${current_url}    ${expected_path}
    ${parsed_path}=    Parse URL    ${current_url}    path
    Should Be Equal    ${parsed_path}    ${expected_path}

Validar Parametros de Consulta
    [Arguments]    ${current_url}    ${expected_query}
    ${parsed_query}=    Parse URL    ${current_url}    query
    Should Be Equal    ${parsed_query}    ${expected_query}

*** Test Cases ***
Validar Partes da URL
    Open Browser    https://www.example.com/page?id=123    chrome
    ${current_url}=    Get Location
    Validar Dominio    ${current_url}    ${EXPECTED_DOMAIN}
    Validar Caminho    ${current_url}    ${EXPECTED_PATH}
    Validar Parametros de Consulta    ${current_url}    ${EXPECTED_QUERY}
    Close Browser
```

### Conclusão

Estas abordagens mostram como validar diferentes partes de uma URL no Robot Framework utilizando SeleniumLibrary e String Library. Validar URLs pode ser crucial para garantir que a navegação e redirecionamentos em sua aplicação funcionem conforme o esperado. A criação de keywords personalizadas pode ajudar a tornar seus testes mais modulares e reutilizáveis.