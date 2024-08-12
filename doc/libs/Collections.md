Aqui está uma tabela com os 20 principais métodos da **Collections** library do Robot Framework, incluindo uma descrição e exemplos de como utilizá-los.

### Tabela: Principais Métodos da Collections Library

| **Método**                      | **Descrição**                                                                                     | **Exemplo de Uso**                                                  |
|---------------------------------|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| `Create List`                   | Cria uma nova lista a partir dos argumentos fornecidos.                                           | `${lista}=    Create List    Item1    Item2    Item3`               |
| `Append To List`                | Adiciona um item ao final de uma lista.                                                           | `Append To List    ${lista}    NovoItem`                            |
| `Insert Into List`              | Insere um item em uma posição específica da lista.                                                | `Insert Into List    ${lista}    1    NovoItem`                     |
| `Remove From List`              | Remove o item em uma posição específica da lista.                                                 | `Remove From List    ${lista}    2`                                 |
| `Get From List`                 | Retorna o item de uma posição específica da lista.                                                | `${item}=    Get From List    ${lista}    1`                        |
| `Get List Length`               | Retorna o número de itens em uma lista.                                                           | `${comprimento}=    Get List Length    ${lista}`                    |
| `List Should Contain`           | Verifica se a lista contém um item específico.                                                    | `List Should Contain    ${lista}    Item1`                          |
| `List Should Not Contain`       | Verifica se a lista não contém um item específico.                                                | `List Should Not Contain    ${lista}    Item2`                      |
| `Count Values In List`          | Conta quantas vezes um valor aparece na lista.                                                    | `${contador}=    Count Values In List    ${lista}    Item1`         |
| `Get Index From List`           | Retorna o índice da primeira ocorrência de um item na lista.                                      | `${indice}=    Get Index From List    ${lista}    Item1`            |
| `Copy List`                     | Cria uma cópia de uma lista.                                                                      | `${nova_lista}=    Copy List    ${lista}`                           |
| `Reverse List`                  | Inverte a ordem dos itens em uma lista.                                                           | `Reverse List    ${lista}`                                          |
| `Remove Duplicates`             | Remove itens duplicados de uma lista.                                                             | `${lista_unica}=    Remove Duplicates    ${lista}`                  |
| `Convert To Dictionary`         | Converte uma lista de pares chave-valor em um dicionário.                                         | `${dicionario}=    Convert To Dictionary    chave1    valor1    chave2    valor2` |
| `Get Dictionary Keys`           | Retorna uma lista de todas as chaves em um dicionário.                                            | `${chaves}=    Get Dictionary Keys    ${dicionario}`                |
| `Get Dictionary Values`         | Retorna uma lista de todos os valores em um dicionário.                                           | `${valores}=    Get Dictionary Values    ${dicionario}`             |
| `Dictionary Should Contain Key` | Verifica se o dicionário contém uma chave específica.                                             | `Dictionary Should Contain Key    ${dicionario}    chave1`          |
| `Dictionary Should Not Contain Key` | Verifica se o dicionário não contém uma chave específica.                                        | `Dictionary Should Not Contain Key    ${dicionario}    chave3`      |
| `Get Value From Dictionary`     | Retorna o valor associado a uma chave específica em um dicionário.                                | `${valor}=    Get Value From Dictionary    ${dicionario}    chave1` |
| `Set To Dictionary`             | Define um valor para uma chave em um dicionário.                                                  | `Set To Dictionary    ${dicionario}    chave1    novo_valor`        |

### Detalhes e Exemplos

1. **Create List**:
   - **Descrição**: Cria uma nova lista a partir dos itens fornecidos como argumentos.
   - **Exemplo**:
     ```robot
     ${lista}=    Create List    Item1    Item2    Item3
     ```

2. **Append To List**:
   - **Descrição**: Adiciona um item ao final de uma lista existente.
   - **Exemplo**:
     ```robot
     Append To List    ${lista}    NovoItem
     ```

3. **Insert Into List**:
   - **Descrição**: Insere um item em uma posição específica de uma lista.
   - **Exemplo**:
     ```robot
     Insert Into List    ${lista}    1    NovoItem
     ```

4. **Remove From List**:
   - **Descrição**: Remove o item em uma posição específica da lista.
   - **Exemplo**:
     ```robot
     Remove From List    ${lista}    2
     ```

5. **Get From List**:
   - **Descrição**: Retorna o item de uma posição específica da lista.
   - **Exemplo**:
     ```robot
     ${item}=    Get From List    ${lista}    1
     ```

6. **Get List Length**:
   - **Descrição**: Retorna o número de itens em uma lista.
   - **Exemplo**:
     ```robot
     ${comprimento}=    Get List Length    ${lista}
     ```

7. **List Should Contain**:
   - **Descrição**: Verifica se um item específico está presente na lista.
   - **Exemplo**:
     ```robot
     List Should Contain    ${lista}    Item1
     ```

8. **List Should Not Contain**:
   - **Descrição**: Verifica se um item específico não está presente na lista.
   - **Exemplo**:
     ```robot
     List Should Not Contain    ${lista}    Item2
     ```

9. **Count Values In List**:
   - **Descrição**: Conta quantas vezes um valor específico aparece na lista.
   - **Exemplo**:
     ```robot
     ${contador}=    Count Values In List    ${lista}    Item1
     ```

10. **Get Index From List**:
    - **Descrição**: Retorna o índice da primeira ocorrência de um item na lista.
    - **Exemplo**:
      ```robot
      ${indice}=    Get Index From List    ${lista}    Item1
      ```

11. **Copy List**:
    - **Descrição**: Cria uma cópia de uma lista.
    - **Exemplo**:
      ```robot
      ${nova_lista}=    Copy List    ${lista}
      ```

12. **Reverse List**:
    - **Descrição**: Inverte a ordem dos itens em uma lista.
    - **Exemplo**:
      ```robot
      Reverse List    ${lista}
      ```

13. **Remove Duplicates**:
    - **Descrição**: Remove todos os itens duplicados de uma lista, mantendo apenas uma ocorrência de cada item.
    - **Exemplo**:
      ```robot
      ${lista_unica}=    Remove Duplicates    ${lista}
      ```

14. **Convert To Dictionary**:
    - **Descrição**: Converte uma lista de pares chave-valor em um dicionário.
    - **Exemplo**:
      ```robot
      ${dicionario}=    Convert To Dictionary    chave1    valor1    chave2    valor2
      ```

15. **Get Dictionary Keys**:
    - **Descrição**: Retorna uma lista de todas as chaves em um dicionário.
    - **Exemplo**:
      ```robot
      ${chaves}=    Get Dictionary Keys    ${dicionario}
      ```

16. **Get Dictionary Values**:
    - **Descrição**: Retorna uma lista de todos os valores em um dicionário.
    - **Exemplo**:
      ```robot
      ${valores}=    Get Dictionary Values    ${dicionario}
      ```

17. **Dictionary Should Contain Key**:
    - **Descrição**: Verifica se um dicionário contém uma chave específica.
    - **Exemplo**:
      ```robot
      Dictionary Should Contain Key    ${dicionario}    chave1
      ```

18. **Dictionary Should Not Contain Key**:
    - **Descrição**: Verifica se um dicionário não contém uma chave específica.
    - **Exemplo**:
      ```robot
      Dictionary Should Not Contain Key    ${dicionario}    chave3
      ```

19. **Get Value From Dictionary**:
    - **Descrição**: Retorna o valor associado a uma chave específica em um dicionário.
    - **Exemplo**:
      ```robot
      ${valor}=    Get Value From Dictionary    ${dicionario}    chave1
      ```

20. **Set To Dictionary**:
    - **Descrição**: Define um valor para uma chave em um dicionário. Se a chave não existir, ela será criada.
    - **Exemplo**:
      ```robot
      Set To Dictionary    ${dicionario}    chave1    novo_valor
      ```

### Conclusão

A `Collections` library é uma das bibliotecas mais úteis do Robot Framework, especialmente para manipulação de listas, dicionários e outras estruturas de dados. Conhecer esses métodos permite que você execute operações complexas em coleções de dados de maneira simples e eficiente, tornando seus testes mais poderosos e flex

íveis.