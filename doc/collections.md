### Robot Framework Library: Collections

#### Introdução

A `Collections` library no Robot Framework é uma biblioteca essencial para a manipulação de diferentes tipos de coleções, como listas, dicionários e conjuntos. Esta biblioteca oferece um conjunto robusto de keywords para realizar operações comuns em coleções, facilitando a criação de testes automatizados que envolvem manipulação de dados.

#### Instalação e Importação

A `Collections` library é parte do núcleo do Robot Framework, o que significa que ela está disponível por padrão e não requer instalação separada. Para usá-la em seus testes, você precisa importá-la no arquivo de teste ou recurso.

```robot
*** Settings ***
Library    Collections
```

#### Manipulação de Listas

A `Collections` library fornece várias keywords para trabalhar com listas. Vamos explorar algumas das mais úteis.

##### Criação e Adição de Itens

```robot
*** Test Cases ***
Criar e Adicionar Itens a uma Lista
    ${lista}    Create List
    Append To List    ${lista}    item1
    Append To List    ${lista}    item2
    Log    ${lista}    # ['item1', 'item2']
```

##### Acessando Itens

```robot
*** Test Cases ***
Acessar Itens da Lista
    ${lista}    Create List    item1    item2    item3
    ${primeiro_item}    Get From List    ${lista}    0
    ${ultimo_item}    Get From List    ${lista}    -1
    Log    ${primeiro_item}    # 'item1'
    Log    ${ultimo_item}    # 'item3'
```

##### Removendo Itens

```robot
*** Test Cases ***
Remover Itens da Lista
    ${lista}    Create List    item1    item2    item3
    Remove From List    ${lista}    item2
    Log    ${lista}    # ['item1', 'item3']
```

##### Verificando Conteúdo

```robot
*** Test Cases ***
Verificar Conteúdo da Lista
    ${lista}    Create List    item1    item2    item3
    List Should Contain Value    ${lista}    item2
    List Should Not Contain Value    ${lista}    item4
```

#### Manipulação de Dicionários

Os dicionários são coleções de pares chave-valor. A `Collections` library oferece várias keywords para manipulação de dicionários.

##### Criação e Adição de Itens

```robot
*** Test Cases ***
Criar e Adicionar Itens a um Dicionário
    ${dicionario}    Create Dictionary    chave1=valor1    chave2=valor2
    Set To Dictionary    ${dicionario}    chave3    valor3
    Log    ${dicionario}    # {'chave1': 'valor1', 'chave2': 'valor2', 'chave3': 'valor3'}
```

##### Acessando Itens

```robot
*** Test Cases ***
Acessar Itens do Dicionário
    ${dicionario}    Create Dictionary    chave1=valor1    chave2=valor2
    ${valor1}    Get From Dictionary    ${dicionario}    chave1
    Log    ${valor1}    # 'valor1'
```

##### Removendo Itens

```robot
*** Test Cases ***
Remover Itens do Dicionário
    ${dicionario}    Create Dictionary    chave1=valor1    chave2=valor2
    Remove From Dictionary    ${dicionario}    chave1
    Log    ${dicionario}    # {'chave2': 'valor2'}
```

##### Verificando Conteúdo

```robot
*** Test Cases ***
Verificar Conteúdo do Dicionário
    ${dicionario}    Create Dictionary    chave1=valor1    chave2=valor2
    Dictionary Should Contain Key    ${dicionario}    chave1
    Dictionary Should Contain Value    ${dicionario}    valor2
    Dictionary Should Not Contain Key    ${dicionario}    chave3
```

#### Manipulação de Conjuntos

Conjuntos são coleções não ordenadas de itens únicos. A `Collections` library oferece suporte limitado para conjuntos, mas ainda assim é útil.

##### Criação e Adição de Itens

```robot
*** Test Cases ***
Criar e Adicionar Itens a um Conjunto
    ${conjunto}    Create Set
    Add To Set    ${conjunto}    item1
    Add To Set    ${conjunto}    item2
    Log    ${conjunto}    # {'item1', 'item2'}
```

##### Verificando Conteúdo

```robot
*** Test Cases ***
Verificar Conteúdo do Conjunto
    ${conjunto}    Create Set    item1    item2
    Set Should Contain    ${conjunto}    item1
    Set Should Not Contain    ${conjunto}    item3
```

#### Outras Operações Úteis

A `Collections` library também oferece várias outras keywords úteis que podem ser aplicadas a diferentes tipos de coleções.

##### Clonando Coleções

```robot
*** Test Cases ***
Clonar Lista
    ${lista}    Create List    item1    item2
    ${copia_lista}    Copy List    ${lista}
    Log    ${copia_lista}    # ['item1', 'item2']
```

##### Ordenando Coleções

```robot
*** Test Cases ***
Ordenar Lista
    ${lista}    Create List    c    a    b
    ${lista_ordenada}    Sort List    ${lista}
    Log    ${lista_ordenada}    # ['a', 'b', 'c']
```

#### Conclusão

A `Collections` library é uma ferramenta poderosa e versátil no Robot Framework, permitindo a manipulação eficiente de listas, dicionários e conjuntos. Com um conjunto abrangente de keywords, ela facilita operações comuns de manipulação de dados, tornando os testes automatizados mais eficientes e menos propensos a erros.

Utilizando esta biblioteca, você pode criar testes mais robustos e flexíveis, manipulando coleções de dados de forma direta e intuitiva. Este artigo cobriu algumas das funcionalidades básicas e avançadas da `Collections` library, mas há muito mais para explorar na documentação oficial do Robot Framework.

### Referências

- [Documentação Oficial do Robot Framework](https://robotframework.org/robotframework/latest/libraries/Collections.html)