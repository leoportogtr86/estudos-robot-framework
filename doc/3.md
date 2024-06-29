### Conceito de Keywords no Robot Framework

#### Introdução às Keywords

No Robot Framework, as keywords são o elemento fundamental para a criação e execução de testes automatizados. Elas
representam ações ou conjuntos de ações que podem ser reutilizadas em diferentes casos de teste. As keywords permitem a
abstração de funcionalidades complexas em comandos simples e legíveis, facilitando a manutenção e a escalabilidade dos
testes.

#### Tipos de Keywords

Existem três tipos principais de keywords no Robot Framework:

1. **Built-in Keywords**: São as keywords fornecidas pela própria biblioteca padrão do Robot Framework. Elas cobrem uma
   ampla gama de funcionalidades básicas, como manipulação de strings, controle de fluxo e verificação de valores.

2. **Library Keywords**: São keywords fornecidas por bibliotecas externas que podem ser integradas ao Robot Framework.
   Exemplos incluem SeleniumLibrary para automação de testes web, RequestsLibrary para testes de API e DatabaseLibrary
   para interação com bancos de dados.

3. **User-Defined Keywords**: São keywords criadas pelo usuário para encapsular ações específicas de seus testes. Elas
   são definidas em arquivos de recursos ou diretamente dentro dos arquivos de teste, permitindo a criação de operações
   customizadas e a reutilização de código.

#### Definindo e Usando Keywords

##### Built-in Keywords

As keywords built-in estão disponíveis automaticamente ao iniciar um projeto com o Robot Framework. Um exemplo simples
de uso de keywords built-in é mostrado abaixo:

```robot
*** Test Cases ***
Example Test Case
    Log    Hello, World!
    Should Be Equal    ${2 + 2}    4
```

Neste exemplo, `Log` e `Should Be Equal` são keywords built-in usadas para registrar uma mensagem e verificar se dois
valores são iguais, respectivamente.

##### Library Keywords

Para usar keywords de uma biblioteca, é necessário primeiro importar a biblioteca desejada. Aqui está um exemplo usando
a SeleniumLibrary:

```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.example.com

*** Test Cases ***
Open Example Page
    Open Browser    ${URL}    chrome
    Page Should Contain    Example Domain
    Close Browser
```

Neste exemplo, keywords como `Open Browser`, `Page Should Contain` e `Close Browser` são fornecidas pela SeleniumLibrary
para interagir com navegadores web.

##### User-Defined Keywords

Keywords definidas pelo usuário permitem a criação de operações customizadas que podem ser reutilizadas em vários
testes. Elas são definidas na seção `*** Keywords ***` e podem ser chamadas em qualquer caso de teste. Veja um exemplo:

```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.example.com

*** Keywords ***
Open Example Page
    Open Browser    ${URL}    chrome
    Page Should Contain    Example Domain

*** Test Cases ***
Test Opening Example Page
    Open Example Page
    [Teardown]    Close Browser
```

Neste exemplo, a keyword `Open Example Page` é definida pelo usuário para abrir um navegador, navegar até uma URL e
verificar o conteúdo da página. Ela é então reutilizada no caso de teste `Test Opening Example Page`.

#### Passando Argumentos para Keywords

Keywords podem aceitar argumentos, permitindo maior flexibilidade e reutilização. Aqui está um exemplo:

```robot
*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Web Page
    [Arguments]    ${url}    ${title}
    Open Browser    ${url}    chrome
    Page Should Contain    ${title}

*** Test Cases ***
Test Example and Another Page
    Open Web Page    https://www.example.com    Example Domain
    [Teardown]    Close Browser

    Open Web Page    https://www.anotherexample.com    Another Example Domain
    [Teardown]    Close Browser
```

Neste exemplo, a keyword `Open Web Page` aceita dois argumentos: `${url}` e `${title}`, permitindo sua utilização para
diferentes URLs e títulos de páginas.

#### Boas Práticas no Uso de Keywords

1. **Reutilização**: Defina keywords reutilizáveis para evitar duplicação de código e facilitar a manutenção dos testes.
2. **Nomeação Clara**: Use nomes descritivos para keywords, de modo que seu propósito seja claro para qualquer pessoa
   que leia os testes.
3. **Modularização**: Mantenha as keywords focadas em uma única responsabilidade ou ação para promover a modularização.
4. **Documentação**: Adicione documentação às keywords para explicar seu propósito e uso, utilizando a
   seção `[Documentation]`.

#### Conclusão

As keywords são a espinha dorsal do Robot Framework, proporcionando uma maneira estruturada e legível de escrever testes
automatizados. Com a compreensão e uso eficaz de built-in, library e user-defined keywords, é possível criar uma suíte
de testes robusta e fácil de manter. Seguir boas práticas na definição e utilização de keywords garantirá que os testes
sejam claros, reutilizáveis e eficientes, contribuindo significativamente para a qualidade do software.