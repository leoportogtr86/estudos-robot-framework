Lista de 15 exercícios práticos para ajudá-lo a entender e praticar a criação de keywords personalizadas no Robot Framework. Esses exercícios variam de básicos a avançados, permitindo que você desenvolva suas habilidades na criação de keywords reutilizáveis e modulares.

### Exercícios: Criação de Keywords de Usuários no Robot Framework

#### Exercício 1: Criar uma Keyword Simples
- **Objetivo**: Criar uma keyword que imprime uma mensagem no log.
- **Tarefa**: Crie uma keyword chamada `Log Hello World` que imprime a mensagem "Hello, World!" no log.

```robot
*** Keywords ***
Log Hello World
    Log    Hello, World!
```

#### Exercício 2: Criar uma Keyword com Argumento
- **Objetivo**: Criar uma keyword que aceita um argumento.
- **Tarefa**: Crie uma keyword chamada `Log Message` que aceita um argumento e imprime essa mensagem no log.

```robot
*** Keywords ***
Log Message
    [Arguments]    ${message}
    Log    ${message}
```

#### Exercício 3: Criar uma Keyword com Vários Argumentos
- **Objetivo**: Criar uma keyword que aceita vários argumentos.
- **Tarefa**: Crie uma keyword chamada `Sum Numbers` que aceita dois números como argumentos e imprime a soma no log.

```robot
*** Keywords ***
Sum Numbers
    [Arguments]    ${num1}    ${num2}
    ${soma}=    Evaluate    ${num1} + ${num2}
    Log    Soma: ${soma}
```

#### Exercício 4: Reutilizar Keywords em Outra Keyword
- **Objetivo**: Criar uma keyword que reutiliza outras keywords.
- **Tarefa**: Crie uma keyword chamada `Greet and Sum` que chama as keywords `Log Hello World` e `Sum Numbers`.

```robot
*** Keywords ***
Greet and Sum
    Log Hello World
    Sum Numbers    5    10
```

#### Exercício 5: Keyword com Retorno de Valor
- **Objetivo**: Criar uma keyword que retorna um valor.
- **Tarefa**: Crie uma keyword chamada `Get Greeting` que retorna a string "Hello, Robot Framework!".

```robot
*** Keywords ***
Get Greeting
    [Return]    Hello, Robot Framework!
```

#### Exercício 6: Condicionais em Keywords
- **Objetivo**: Criar uma keyword que usa uma condição `IF`.
- **Tarefa**: Crie uma keyword chamada `Check Even Number` que verifica se um número é par e imprime uma mensagem no log.

```robot
*** Keywords ***
Check Even Number
    [Arguments]    ${num}
    IF    ${num} % 2 == 0
        Log    ${num} é par.
    ELSE
        Log    ${num} é ímpar.
    END
```

#### Exercício 7: Keyword com Loop
- **Objetivo**: Criar uma keyword que utiliza um loop.
- **Tarefa**: Crie uma keyword chamada `Log Numbers` que imprime números de 1 a 5 no log.

```robot
*** Keywords ***
Log Numbers
    FOR    ${num}    IN RANGE    1    6
        Log    Número: ${num}
    END
```

#### Exercício 8: Manipular Listas em Keywords
- **Objetivo**: Criar uma keyword que manipula listas.
- **Tarefa**: Crie uma keyword chamada `Sum List` que aceita uma lista de números como argumento e imprime a soma dos números.

```robot
*** Keywords ***
Sum List
    [Arguments]    ${lista}
    ${soma}=    Set Variable    0
    FOR    ${num}    IN    @{lista}
        ${soma}=    Evaluate    ${soma} + ${num}
    END
    Log    Soma: ${soma}
```

#### Exercício 9: Criar Keywords em Arquivo de Recursos
- **Objetivo**: Criar keywords em um arquivo de recursos e reutilizá-las em um caso de teste.
- **Tarefa**: Crie um arquivo de recursos chamado `my_keywords.robot` com duas keywords e use-as em um arquivo de teste separado.

```robot
# my_keywords.robot

*** Keywords ***
Log Hello
    Log    Hello

Sum Numbers
    [Arguments]    ${num1}    ${num2}
    ${soma}=    Evaluate    ${num1} + ${num2}
    Log    Soma: ${soma}

# test_case.robot

*** Settings ***
Resource    my_keywords.robot

*** Test Cases ***
Testar Keywords do Recurso
    Log Hello
    Sum Numbers    3    7
```

#### Exercício 10: Keywords com Keywords Embutidas
- **Objetivo**: Criar uma keyword que utilize outras keywords internas do Robot Framework.
- **Tarefa**: Crie uma keyword chamada `Verify Title and Close` que abre um navegador, verifica o título da página e fecha o navegador.

```robot
*** Keywords ***
Verify Title and Close
    [Arguments]    ${url}    ${expected_title}
    Open Browser    ${url}    chrome
    Title Should Be    ${expected_title}
    Close Browser
```

#### Exercício 11: Keywords para Manipular Dicionários
- **Objetivo**: Criar uma keyword que manipula dicionários.
- **Tarefa**: Crie uma keyword chamada `Log Dictionary Keys` que aceita um dicionário como argumento e imprime todas as chaves.

```robot
*** Keywords ***
Log Dictionary Keys
    [Arguments]    ${dicionario}
    FOR    ${chave}    IN    &{dicionario}
        Log    Chave: ${chave}
    END
```

#### Exercício 12: Keywords para Verificar Conteúdo de Páginas
- **Objetivo**: Criar uma keyword que verifica se uma página contém um texto específico.
- **Tarefa**: Crie uma keyword chamada `Verify Page Contains Text` que abre uma URL, verifica se a página contém um texto e fecha o navegador.

```robot
*** Keywords ***
Verify Page Contains Text
    [Arguments]    ${url}    ${text}
    Open Browser    ${url}    chrome
    Page Should Contain    ${text}
    Close Browser
```

#### Exercício 13: Keywords com Parâmetros Opcionais
- **Objetivo**: Criar uma keyword que aceita parâmetros opcionais.
- **Tarefa**: Crie uma keyword chamada `Log Greeting` que aceita um parâmetro opcional para personalizar a mensagem.

```robot
*** Keywords ***
Log Greeting
    [Arguments]    ${name}=Robot
    Log    Hello, ${name}!
```

#### Exercício 14: Keywords com Estruturas de Controle
- **Objetivo**: Criar uma keyword que utilize estruturas de controle.
- **Tarefa**: Crie uma keyword chamada `Check Number and Log` que verifica se um número é maior, menor ou igual a 10 e imprime uma mensagem no log.

```robot
*** Keywords ***
Check Number and Log
    [Arguments]    ${num}
    IF    ${num} > 10
        Log    ${num} é maior que 10.
    ELSE IF    ${num} < 10
        Log    ${num} é menor que 10.
    ELSE
        Log    ${num} é igual a 10.
    END
```

#### Exercício 15: Criar Keywords para Trabalhar com Arquivos
- **Objetivo**: Criar uma keyword que trabalhe com arquivos.
- **Tarefa**: Crie uma keyword chamada `Write and Read File` que escreve uma mensagem em um arquivo e depois lê o conteúdo do arquivo.

```robot
*** Keywords ***
Write and Read File
    [Arguments]    ${file_path}    ${message}
    Create File    ${file_path}    ${message}
    ${conteudo}=    Get File    ${file_path}
    Log    Conteúdo do Arquivo: ${conteudo}
```

### Conclusão

Esses exercícios ajudam a desenvolver suas habilidades na criação de keywords personalizadas no Robot Framework. Ao concluir esses exercícios, você estará mais preparado para escrever testes mais complexos, modulares e reutilizáveis, aproveitando ao máximo a flexibilidade que o Robot Framework oferece.