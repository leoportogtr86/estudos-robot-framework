### Exercícios: Escrevendo Seu Primeiro Test Case

#### Exercício 1: Instalação do Robot Framework
- **Objetivo**: Certificar-se de que o Robot Framework está instalado corretamente.
- **Tarefa**: Instale o Robot Framework usando o pip e verifique a instalação executando o comando `robot --version`.

#### Exercício 2: Configuração Inicial
- **Objetivo**: Configurar o ambiente de teste inicial.
- **Tarefa**: Crie uma estrutura de diretórios para seu projeto de testes e configure um arquivo básico `.robot`.

#### Exercício 3: Escrever um Test Case Simples
- **Objetivo**: Criar um caso de teste simples que verifica se a palavra "Hello, World!" aparece no log.
- **Tarefa**: Escreva um test case que use a keyword `Log` para registrar a mensagem "Hello, World!".

```robot
*** Test Cases ***
Testar Log
    Log    Hello, World!
```

#### Exercício 4: Utilizando Variáveis
- **Objetivo**: Aprender a usar variáveis no Robot Framework.
- **Tarefa**: Crie um test case que use uma variável para armazenar a mensagem "Hello, Robot Framework!".

```robot
*** Variables ***
${MENSAGEM}    Hello, Robot Framework!

*** Test Cases ***
Testar Variável
    Log    ${MENSAGEM}
```

#### Exercício 5: Verificar Conteúdo de Página Web
- **Objetivo**: Criar um test case que verifica o título de uma página web.
- **Tarefa**: Use a SeleniumLibrary para abrir um navegador e verificar o título da página inicial do Google.

```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
${TITLE}  Google

*** Test Cases ***
Verificar Título da Página
    Open Browser    ${URL}    chrome
    Title Should Be    ${TITLE}
    Close Browser
```

#### Exercício 6: Utilizando Keywords Personalizadas
- **Objetivo**: Criar e usar uma keyword personalizada.
- **Tarefa**: Crie uma keyword que abre o navegador e navega para uma URL, e use essa keyword em um test case.

```robot
*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir Página
    [Arguments]    ${url}
    Open Browser    ${url}    chrome

*** Test Cases ***
Testar Keyword Personalizada
    Abrir Página    https://www.google.com
    Title Should Be    Google
    Close Browser
```

#### Exercício 7: Interação com Elementos da Página
- **Objetivo**: Criar um test case que interage com elementos de uma página web.
- **Tarefa**: Use a SeleniumLibrary para preencher um campo de pesquisa no Google e clicar no botão de pesquisa.

```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
${SEARCH_TERM}  Robot Framework

*** Test Cases ***
Pesquisar no Google
    Open Browser    ${URL}    chrome
    Input Text    name=q    ${SEARCH_TERM}
    Click Button    name=btnK
    Close Browser
```

#### Exercício 8: Verificar Conteúdo de Texto
- **Objetivo**: Criar um test case que verifica se um texto específico está presente na página.
- **Tarefa**: Verifique se a página de resultados do Google contém o texto "Robot Framework".

```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
${SEARCH_TERM}  Robot Framework
${EXPECTED_TEXT}  Robot Framework

*** Test Cases ***
Verificar Conteúdo de Texto
    Open Browser    ${URL}    chrome
    Input Text    name=q    ${SEARCH_TERM}
    Click Button    name=btnK
    Page Should Contain    ${EXPECTED_TEXT}
    Close Browser
```

#### Exercício 9: Testar Função de Pesquisa
- **Objetivo**: Criar um test case completo para testar a função de pesquisa do Google.
- **Tarefa**: Combine os passos dos exercícios anteriores para criar um test case que abre o Google, faz uma pesquisa e verifica o resultado.

```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
${SEARCH_TERM}  Robot Framework
${EXPECTED_TEXT}  Robot Framework

*** Test Cases ***
Testar Pesquisa no Google
    Open Browser    ${URL}    chrome
    Input Text    name=q    ${SEARCH_TERM}
    Click Button    name=btnK
    Page Should Contain    ${EXPECTED_TEXT}
    Close Browser
```

#### Exercício 10: Verificação de Elemento Não Existente
- **Objetivo**: Criar um test case que verifica a ausência de um elemento específico na página.
- **Tarefa**: Verifique se um elemento não existente não está presente na página de resultados do Google.

```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
${SEARCH_TERM}  Robot Framework
${NON_EXISTENT_ELEMENT}  id=non-existent-element

*** Test Cases ***
Verificar Elemento Não Existente
    Open Browser    ${URL}    chrome
    Input Text    name=q    ${SEARCH_TERM}
    Click Button    name=btnK
    Page Should Not Contain Element    ${NON_EXISTENT_ELEMENT}
    Close Browser
```

### Conclusão

Estes exercícios fornecem uma base sólida para começar a escrever seus próprios casos de teste no Robot Framework. Eles cobrem desde a configuração básica até interações mais avançadas com páginas web, utilizando variáveis, keywords personalizadas e verificações de conteúdo. Seguindo esses exercícios, você poderá desenvolver suas habilidades de automação de testes e aplicar o Robot Framework de forma eficaz em seus projetos.