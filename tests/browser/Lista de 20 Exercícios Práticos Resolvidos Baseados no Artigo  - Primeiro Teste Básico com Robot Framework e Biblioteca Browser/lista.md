### Lista de 20 Exercícios Práticos Resolvidos Baseados no Artigo "Primeiro Teste Básico com Robot Framework e Biblioteca Browser"

#### **Exercício 1: Criando e Executando o Teste Básico**
**Objetivo**: Criar um teste que abre a página "https://www.example.com" e verifica o título da página.

**Resolução**:
```robot
*** Settings ***
Library    Browser

*** Test Cases ***
Verificar Título da Página
    New Page    https://www.example.com
    ${titulo}=    Get Title
    Should Be Equal    ${titulo}    Example Domain
    Close Browser
```

#### **Exercício 2: Testando um Título Diferente**
**Objetivo**: Modificar o teste para verificar o título da página "https://www.google.com".

**Resolução**:
```robot
*** Test Cases ***
Verificar Título do Google
    New Page    https://www.google.com
    ${titulo}=    Get Title
    Should Be Equal    ${titulo}    Google
    Close Browser
```

#### **Exercício 3: Capturando e Validando um Elemento na Página**
**Objetivo**: Verificar se o texto "Example Domain" está presente na página "https://www.example.com".

**Resolução**:
```robot
*** Test Cases ***
Verificar Texto na Página
    New Page    https://www.example.com
    ${texto}=    Get Text    css=h1
    Should Be Equal    ${texto}    Example Domain
    Close Browser
```

#### **Exercício 4: Verificando a Presença de um Elemento**
**Objetivo**: Testar se o elemento com o seletor `css=p` está presente na página "https://www.example.com".

**Resolução**:
```robot
*** Test Cases ***
Verificar Presença de Parágrafo
    New Page    https://www.example.com
    ${estado}=    Get Element State    css=p    visible
    Should Be True    ${estado}
    Close Browser
```

#### **Exercício 5: Capturando um Screenshot**
**Objetivo**: Capturar um screenshot da página "https://www.example.com".

**Resolução**:
```robot
*** Test Cases ***
Capturar Screenshot
    New Page    https://www.example.com
    Capture Screenshot    ExampleScreenshot.png
    Close Browser
```

#### **Exercício 6: Validando o Título em uma Página Diferente**
**Objetivo**: Verificar o título da página "https://news.ycombinator.com".

**Resolução**:
```robot
*** Test Cases ***
Verificar Título de YCombinator
    New Page    https://news.ycombinator.com
    ${titulo}=    Get Title
    Should Be Equal    ${titulo}    Hacker News
    Close Browser
```

#### **Exercício 7: Navegando para uma URL e Voltando**
**Objetivo**: Abrir "https://www.example.com", navegar para "https://www.google.com", e depois voltar para a página anterior.

**Resolução**:
```robot
*** Test Cases ***
Navegar e Voltar
    New Page    https://www.example.com
    Navigate To    https://www.google.com
    Go Back
    ${titulo}=    Get Title
    Should Be Equal    ${titulo}    Example Domain
    Close Browser
```

#### **Exercício 8: Abrindo Múltiplas Páginas em Abas**
**Objetivo**: Abrir "https://www.example.com" e "https://www.google.com" em abas separadas e verificar os títulos.

**Resolução**:
```robot
*** Test Cases ***
Abrir Múltiplas Abas
    New Context
    New Page    https://www.example.com
    ${titulo1}=    Get Title
    Should Be Equal    ${titulo1}    Example Domain
    New Page    https://www.google.com
    ${titulo2}=    Get Title
    Should Be Equal    ${titulo2}    Google
    Close Browser
```

#### **Exercício 9: Preenchendo e Submetendo um Formulário**
**Objetivo**: Preencher o campo de busca do Google e submeter o formulário.

**Resolução**:
```robot
*** Test Cases ***
Pesquisar no Google
    New Page    https://www.google.com
    Type Text    css=input[name="q"]    Robot Framework
    Press Keys    css=input[name="q"]    Enter
    Wait For Elements State    css=h3    visible
    Close Browser
```

#### **Exercício 10: Espera Explícita por um Elemento**
**Objetivo**: Implementar uma espera explícita para garantir que o botão "Estou com sorte" do Google esteja visível antes de interagir com ele.

**Resolução**:
```robot
*** Test Cases ***
Esperar por Elemento
    New Page    https://www.google.com
    Wait For Elements State    css=input[name="btnI"]    visible
    Close Browser
```

#### **Exercício 11: Manipulando um IFrame**
**Objetivo**: Acessar um elemento dentro de um iframe na página "https://www.w3schools.com/html/html_iframe.asp".

**Resolução**:
```robot
*** Test Cases ***
Interagir com IFrame
    New Page    https://www.w3schools.com/html/html_iframe.asp
    Select Frame    css=iframe[title="W3Schools HTML Tutorial"]
    ${titulo}=    Get Title
    Should Be Equal    ${titulo}    HTML Tutorial
    Unselect Frame
    Close Browser
```

#### **Exercício 12: Verificando a URL Atual**
**Objetivo**: Navegar até "https://www.example.com" e verificar se a URL atual está correta.

**Resolução**:
```robot
*** Test Cases ***
Verificar URL
    New Page    https://www.example.com
    ${url}=    Get URL
    Should Be Equal    ${url}    https://www.example.com/
    Close Browser
```

#### **Exercício 13: Verificando o Número de Elementos**
**Objetivo**: Contar o número de parágrafos (`<p>`) na página "https://www.example.com".

**Resolução**:
```robot
*** Test Cases ***
Contar Parágrafos
    New Page    https://www.example.com
    ${num_paragrafos}=    Get Elements Count    css=p
    Should Be Equal As Numbers    ${num_paragrafos}    1
    Close Browser
```

#### **Exercício 14: Modificando o Conteúdo da Página**
**Objetivo**: Usar JavaScript para alterar o texto de um elemento na página "https://www.example.com".

**Resolução**:
```robot
*** Test Cases ***
Modificar Conteúdo com JS
    New Page    https://www.example.com
    Execute JavaScript    document.querySelector("h1").innerText = "Teste Automatizado"
    ${novo_texto}=    Get Text    css=h1
    Should Be Equal    ${novo_texto}    Teste Automatizado
    Close Browser
```

#### **Exercício 15: Testando a Responsividade da Página**
**Objetivo**: Alterar a resolução da janela do navegador para testar a responsividade da página "https://www.example.com".

**Resolução**:
```robot
*** Test Cases ***
Testar Responsividade
    New Page    https://www.example.com
    Set Viewport Size    375    667  # Resolução de um iPhone 6/7/8
    Capture Screenshot    ResponsiveExample.png
    Close Browser
```

#### **Exercício 16: Lidar com Alertas JavaScript**
**Objetivo**: Disparar um alerta JavaScript na página e aceitar o alerta.

**Resolução**:
```robot
*** Test Cases ***
Manipular Alerta JS
    New Page    https://www.example.com
    Execute JavaScript    window.alert("Teste de Alerta")
    Handle Alert    Accept
    Close Browser
```

#### **Exercício 17: Realizar Download de Arquivo**
**Objetivo**: Automatizar o download de um arquivo da página "https://www.example.com".

**Resolução**:
```robot
*** Test Cases ***
Realizar Download
    New Page    https://www.example.com
    Download    https://www.example.com/somefile.txt    pasta_do_download
    Close Browser
```

#### **Exercício 18: Validar Redirecionamento**
**Objetivo**: Verificar se a página "https://www.example.com" redireciona corretamente para uma nova URL.

**Resolução**:
```robot
*** Test Cases ***
Validar Redirecionamento
    New Page    https://www.example.com
    Wait Until Network Is Idle
    ${url_atual}=    Get URL
    Should Be Equal    ${url_atual}    https://www.example.com/
    Close Browser
```

#### **Exercício 19: Verificar a Disponibilidade de um Botão**
**Objetivo**: Testar se o botão de pesquisa na página "https://www.google.com" está habilitado.

**Resolução**:
```robot
*** Test Cases ***
Verificar Disponibilidade do Botão
    New Page    https://www.google.com
    ${estado}=    Get Element State    css=input[name="btnK"]    enabled
    Should Be True    ${estado}
    Close Browser
```

#### **Exercício 20

: Fechar o Navegador Automaticamente em Caso de Erro**
**Objetivo**: Configurar o teste para fechar o navegador mesmo que um erro ocorra durante a execução.

**Resolução**:
```robot
*** Settings ***
Library    Browser
Suite Teardown    Close Browser

*** Test Cases ***
Teste com Fechamento Automático
    New Page    https://www.example.com
    ${titulo}=    Get Title
    Should Be Equal    ${titulo}    Título Incorreto  # Este teste deve falhar
```

### Conclusão

Estes exercícios práticos fornecem uma base sólida para dominar o uso do Robot Framework com a biblioteca Browser. Eles abordam diferentes aspectos de automação de testes web, desde tarefas simples até interações mais complexas. Ao concluir todos os exercícios, você estará bem preparado para criar e manter testes robustos e eficazes em seus projetos.