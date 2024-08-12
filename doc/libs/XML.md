Aqui está uma tabela com os 20 principais métodos da **XML** library do Robot Framework, incluindo uma descrição e exemplos de como utilizá-los.

### Tabela: Principais Métodos da XML Library

| **Método**                      | **Descrição**                                                                                     | **Exemplo de Uso**                                                  |
|---------------------------------|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| `Parse XML`                     | Carrega um arquivo XML ou string XML e retorna um objeto XML.                                     | `${xml}=    Parse XML    path/to/file.xml`                          |
| `Get Element`                   | Retorna o primeiro elemento XML que corresponde a um caminho XPath.                               | `${elemento}=    Get Element    ${xml}    //tagname`                |
| `Get Elements`                  | Retorna todos os elementos XML que correspondem a um caminho XPath.                               | `${elementos}=    Get Elements    ${xml}    //tagname`              |
| `Get Element Text`              | Retorna o texto de um elemento XML.                                                               | `${texto}=    Get Element Text    ${elemento}`                      |
| `Get Element Attribute`         | Retorna o valor de um atributo específico de um elemento XML.                                     | `${atributo}=    Get Element Attribute    ${elemento}    attribute_name` |
| `Element Should Exist`          | Verifica se um elemento XML existe, caso contrário falha o teste.                                 | `Element Should Exist    ${xml}    //tagname`                       |
| `Element Should Not Exist`      | Verifica se um elemento XML não existe, caso contrário falha o teste.                             | `Element Should Not Exist    ${xml}    //tagname`                   |
| `Element Text Should Be`        | Verifica se o texto de um elemento XML é igual ao esperado.                                       | `Element Text Should Be    ${elemento}    texto_esperado`           |
| `Element Attribute Should Be`   | Verifica se o valor de um atributo de um elemento XML é igual ao esperado.                        | `Element Attribute Should Be    ${elemento}    attribute_name    valor_esperado` |
| `Count Elements`                | Conta o número de elementos que correspondem a um caminho XPath.                                  | `${count}=    Count Elements    ${xml}    //tagname`                |
| `Log XML`                       | Registra a estrutura XML em formato legível no log do Robot Framework.                            | `Log XML    ${xml}`                                                 |
| `Save XML`                      | Salva o conteúdo XML em um arquivo.                                                               | `Save XML    ${xml}    path/to/output.xml`                          |
| `Remove Element`                | Remove um elemento XML que corresponde a um caminho XPath.                                        | `Remove Element    ${xml}    //tagname`                             |
| `Add Element`                   | Adiciona um novo elemento XML como filho de outro elemento.                                       | `Add Element    ${xml}    //parent_tag    new_tag`                  |
| `Set Element Text`              | Define ou altera o texto de um elemento XML existente.                                            | `Set Element Text    ${elemento}    novo_texto`                     |
| `Set Element Attribute`         | Define ou altera o valor de um atributo de um elemento XML existente.                             | `Set Element Attribute    ${elemento}    attribute_name    novo_valor` |
| `Clear Element`                 | Remove o conteúdo interno de um elemento XML, deixando-o vazio.                                   | `Clear Element    ${elemento}`                                       |
| `Get Root Element`              | Retorna o elemento raiz de um documento XML.                                                      | `${root}=    Get Root Element    ${xml}`                            |
| `XML Should Match`              | Verifica se dois documentos XML são estruturalmente iguais.                                       | `XML Should Match    ${xml1}    ${xml2}`                            |
| `Transform XML`                 | Aplica uma transformação XSLT em um documento XML e retorna o resultado.                          | `${resultado}=    Transform XML    ${xml}    path/to/transform.xslt` |

### Detalhes e Exemplos

1. **Parse XML**:
   - **Descrição**: Carrega um documento XML de um arquivo ou string e retorna um objeto que pode ser usado em outras operações XML.
   - **Exemplo**:
     ```robot
     ${xml}=    Parse XML    path/to/file.xml
     ```

2. **Get Element**:
   - **Descrição**: Retorna o primeiro elemento XML que corresponde ao caminho XPath fornecido.
   - **Exemplo**:
     ```robot
     ${elemento}=    Get Element    ${xml}    //book
     ```

3. **Get Elements**:
   - **Descrição**: Retorna uma lista de todos os elementos XML que correspondem ao caminho XPath fornecido.
   - **Exemplo**:
     ```robot
     ${elementos}=    Get Elements    ${xml}    //book
     ```

4. **Get Element Text**:
   - **Descrição**: Retorna o texto de um elemento XML.
   - **Exemplo**:
     ```robot
     ${texto}=    Get Element Text    ${elemento}
     ```

5. **Get Element Attribute**:
   - **Descrição**: Retorna o valor de um atributo específico de um elemento XML.
   - **Exemplo**:
     ```robot
     ${atributo}=    Get Element Attribute    ${elemento}    id
     ```

6. **Element Should Exist**:
   - **Descrição**: Verifica se um elemento XML existe, caso contrário, o teste falha.
   - **Exemplo**:
     ```robot
     Element Should Exist    ${xml}    //book
     ```

7. **Element Should Not Exist**:
   - **Descrição**: Verifica se um elemento XML não existe, caso contrário, o teste falha.
   - **Exemplo**:
     ```robot
     Element Should Not Exist    ${xml}    //unknown
     ```

8. **Element Text Should Be**:
   - **Descrição**: Verifica se o texto de um elemento XML é igual ao esperado.
   - **Exemplo**:
     ```robot
     Element Text Should Be    ${elemento}    Expected Text
     ```

9. **Element Attribute Should Be**:
   - **Descrição**: Verifica se o valor de um atributo de um elemento XML é igual ao esperado.
   - **Exemplo**:
     ```robot
     Element Attribute Should Be    ${elemento}    id    12345
     ```

10. **Count Elements**:
    - **Descrição**: Conta o número de elementos que correspondem a um caminho XPath.
    - **Exemplo**:
      ```robot
      ${count}=    Count Elements    ${xml}    //book
      Log    Total de livros: ${count}
      ```

11. **Log XML**:
    - **Descrição**: Registra a estrutura XML em formato legível no log do Robot Framework.
    - **Exemplo**:
      ```robot
      Log XML    ${xml}
      ```

12. **Save XML**:
    - **Descrição**: Salva o conteúdo XML em um arquivo.
    - **Exemplo**:
      ```robot
      Save XML    ${xml}    path/to/output.xml
      ```

13. **Remove Element**:
    - **Descrição**: Remove um elemento XML que corresponde a um caminho XPath.
    - **Exemplo**:
      ```robot
      Remove Element    ${xml}    //book[@id='12345']
      ```

14. **Add Element**:
    - **Descrição**: Adiciona um novo elemento XML como filho de outro elemento.
    - **Exemplo**:
      ```robot
      Add Element    ${xml}    //library    new_book
      ```

15. **Set Element Text**:
    - **Descrição**: Define ou altera o texto de um elemento XML existente.
    - **Exemplo**:
      ```robot
      Set Element Text    ${elemento}    Novo texto do elemento
      ```

16. **Set Element Attribute**:
    - **Descrição**: Define ou altera o valor de um atributo de um elemento XML existente.
    - **Exemplo**:
      ```robot
      Set Element Attribute    ${elemento}    id    67890
      ```

17. **Clear Element**:
    - **Descrição**: Remove o conteúdo interno de um elemento XML, deixando-o vazio.
    - **Exemplo**:
      ```robot
      Clear Element    ${elemento}
      ```

18. **Get Root Element**:
    - **Descrição**: Retorna o elemento raiz de um documento XML.
    - **Exemplo**:
      ```robot
      ${root}=    Get Root Element    ${xml}
      ```

19. **XML Should Match**:
    - **Descrição**: Verifica se dois documentos XML são estruturalmente iguais.
    - **Exemplo**:
      ```robot
      XML Should Match    ${xml1}    ${xml2}
      ```

20. **Transform XML**:
    - **Descrição**: Aplica uma transformação XSLT em um documento XML e retorna o resultado.
    - **Exemplo**:
      ```robot
      ${resultado}=    Transform XML    ${xml}    path/to/transform.xslt
      ```

### Conclusão

A `XML` library do Robot Framework é uma ferramenta poderosa para manipular e verificar documentos XML durante a execução dos testes. Ela permite realizar operações complexas como a leitura, modificação, remoção, e validação de elementos XML, bem como a aplicação de transformações XSLT. Essa biblioteca é especialmente útil em cenários que envol

vem a troca de dados em formato XML, como integração de sistemas, verificação de respostas de serviços web, e validação de arquivos de configuração. Dominar esses métodos facilita a automação de tarefas que envolvem XML, aumentando a precisão e a eficiência dos seus testes automatizados.