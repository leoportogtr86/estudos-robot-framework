Aqui está uma tabela com os 20 principais métodos da **String** library do Robot Framework, incluindo uma descrição e exemplos de como utilizá-los.

### Tabela: Principais Métodos da String Library

| **Método**                      | **Descrição**                                                                                     | **Exemplo de Uso**                                                  |
|---------------------------------|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| `Convert To Lowercase`          | Converte uma string para letras minúsculas.                                                       | `${resultado}=    Convert To Lowercase    EXEMPLO`                  |
| `Convert To Uppercase`          | Converte uma string para letras maiúsculas.                                                       | `${resultado}=    Convert To Uppercase    exemplo`                  |
| `Capitalize`                    | Converte a primeira letra de uma string para maiúscula.                                           | `${resultado}=    Capitalize    exemplo`                            |
| `Title Case`                    | Converte cada palavra de uma string para título (primeira letra maiúscula).                       | `${resultado}=    Title Case    exemplo de texto`                   |
| `Split String`                  | Divide uma string em uma lista de substrings com base em um delimitador.                          | `${resultado}=    Split String    exemplo, de, texto    ,`          |
| `Replace String`                | Substitui todas as ocorrências de uma substring por outra em uma string.                          | `${resultado}=    Replace String    exemplo de texto    texto    palavra` |
| `Strip String`                  | Remove espaços em branco do início e do final de uma string.                                      | `${resultado}=    Strip String    exemplo `                        |
| `Get Length`                    | Retorna o comprimento (número de caracteres) de uma string.                                       | `${comprimento}=    Get Length    exemplo`                          |
| `Substring Should Be Present`   | Verifica se uma substring específica está presente em uma string.                                 | `Substring Should Be Present    exemplo de texto    texto`          |
| `Substring Should Not Be Present`| Verifica se uma substring específica não está presente em uma string.                             | `Substring Should Not Be Present    exemplo de texto    palavra`    |
| `Should Be String`              | Verifica se um valor é uma string.                                                                | `Should Be String    ${valor}`                                      |
| `Should Match`                  | Verifica se uma string corresponde a um padrão (regex).                                           | `Should Match    exemplo de texto    ^exemplo.*texto$`              |
| `Should Not Match`              | Verifica se uma string não corresponde a um padrão (regex).                                       | `Should Not Match    exemplo de texto    ^outra.*$`                 |
| `Join Strings`                  | Junta uma lista de strings em uma única string, separadas por um delimitador.                     | `${resultado}=    Join Strings    ,    parte1    parte2    parte3`  |
| `Remove String`                 | Remove todas as ocorrências de uma substring de uma string.                                       | `${resultado}=    Remove String    exemplo de texto    texto`       |
| `Replace String Using Regexp`   | Substitui partes de uma string que correspondem a um padrão (regex) por outra string.             | `${resultado}=    Replace String Using Regexp    exemplo123    \d+    456` |
| `Split String To Characters`    | Divide uma string em uma lista de caracteres.                                                     | `${resultado}=    Split String To Characters    exemplo`            |
| `Format String`                 | Formata uma string usando placeholders e valores fornecidos.                                      | `${resultado}=    Format String    Olá, {0}!    João`               |
| `Trim String`                   | Remove espaços em branco de uma string, mas preserva espaços internos.                            | `${resultado}=    Trim String    exemplo de texto`                 |
| `Reverse String`                | Inverte os caracteres de uma string.                                                              | `${resultado}=    Reverse String    exemplo`                        |

### Detalhes e Exemplos

1. **Convert To Lowercase**:
   - **Descrição**: Converte todos os caracteres de uma string para letras minúsculas.
   - **Exemplo**:
     ```robot
     ${resultado}=    Convert To Lowercase    EXEMPLO
     Log    ${resultado}  # saída: exemplo
     ```

2. **Convert To Uppercase**:
   - **Descrição**: Converte todos os caracteres de uma string para letras maiúsculas.
   - **Exemplo**:
     ```robot
     ${resultado}=    Convert To Uppercase    exemplo
     Log    ${resultado}  # saída: EXEMPLO
     ```

3. **Capitalize**:
   - **Descrição**: Converte a primeira letra da string para maiúscula.
   - **Exemplo**:
     ```robot
     ${resultado}=    Capitalize    exemplo
     Log    ${resultado}  # saída: Exemplo
     ```

4. **Title Case**:
   - **Descrição**: Converte a primeira letra de cada palavra em maiúscula.
   - **Exemplo**:
     ```robot
     ${resultado}=    Title Case    exemplo de texto
     Log    ${resultado}  # saída: Exemplo De Texto
     ```

5. **Split String**:
   - **Descrição**: Divide uma string em uma lista de substrings com base em um delimitador.
   - **Exemplo**:
     ```robot
     ${resultado}=    Split String    exemplo, de, texto    ,
     Log    ${resultado}  # saída: [exemplo, de, texto]
     ```

6. **Replace String**:
   - **Descrição**: Substitui todas as ocorrências de uma substring por outra dentro de uma string.
   - **Exemplo**:
     ```robot
     ${resultado}=    Replace String    exemplo de texto    texto    palavra
     Log    ${resultado}  # saída: exemplo de palavra
     ```

7. **Strip String**:
   - **Descrição**: Remove espaços em branco do início e do fim de uma string.
   - **Exemplo**:
     ```robot
     ${resultado}=    Strip String    exemplo  
     Log    ${resultado}  # saída: exemplo
     ```

8. **Get Length**:
   - **Descrição**: Retorna o comprimento (número de caracteres) de uma string.
   - **Exemplo**:
     ```robot
     ${comprimento}=    Get Length    exemplo
     Log    ${comprimento}  # saída: 7
     ```

9. **Substring Should Be Present**:
   - **Descrição**: Verifica se uma substring específica está presente dentro de uma string.
   - **Exemplo**:
     ```robot
     Substring Should Be Present    exemplo de texto    texto
     ```

10. **Substring Should Not Be Present**:
    - **Descrição**: Verifica se uma substring específica não está presente dentro de uma string.
    - **Exemplo**:
      ```robot
      Substring Should Not Be Present    exemplo de texto    palavra
      ```

11. **Should Be String**:
    - **Descrição**: Verifica se um valor é uma string.
    - **Exemplo**:
      ```robot
      Should Be String    ${valor}
      ```

12. **Should Match**:
    - **Descrição**: Verifica se uma string corresponde a um padrão de expressão regular (regex).
    - **Exemplo**:
      ```robot
      Should Match    exemplo de texto    ^exemplo.*texto$
      ```

13. **Should Not Match**:
    - **Descrição**: Verifica se uma string não corresponde a um padrão de expressão regular (regex).
    - **Exemplo**:
      ```robot
      Should Not Match    exemplo de texto    ^outra.*
      ```

14. **Join Strings**:
    - **Descrição**: Junta uma lista de strings em uma única string, separadas por um delimitador.
    - **Exemplo**:
      ```robot
      ${resultado}=    Join Strings    ,    parte1    parte2    parte3
      Log    ${resultado}  # saída: parte1,parte2,parte3
      ```

15. **Remove String**:
    - **Descrição**: Remove todas as ocorrências de uma substring específica dentro de uma string.
    - **Exemplo**:
      ```robot
      ${resultado}=    Remove String    exemplo de texto    texto
      Log    ${resultado}  # saída: exemplo de
      ```

16. **Replace String Using Regexp**:
    - **Descrição**: Substitui partes de uma string que correspondem a um padrão de expressão regular (regex) por outra string.
    - **Exemplo**:
      ```robot
      ${resultado}=    Replace String Using Regexp    exemplo123    \d+    456
      Log    ${resultado}  # saída: exemplo456
      ```

17. **Split String To Characters**:
    - **Descrição**: Divide uma string em uma lista de caracteres.
    - **Exemplo**:
      ```robot
      ${resultado}=    Split String To Characters    exemplo
      Log    ${resultado}  # saída: [e, x, e, m, p, l, o]
      ```

18. **Format String**:
    - **Descrição**: Formata uma string usando placeholders e valores fornecidos.
    - **Exemplo**:
      ```robot
      ${resultado}=    Format String    Olá, {0}!    João
      Log    ${resultado}  # saída: Olá, João!
      ```

19. **Trim String**:
    - **Descrição**: Remove espaços em branco do início e do fim de

 uma string, preservando espaços internos.
    - **Exemplo**:
      ```robot
      ${resultado}=    Trim String    exemplo de texto
      Log    ${resultado}  # saída: exemplo de texto
      ```

20. **Reverse String**:
    - **Descrição**: Inverte os caracteres de uma string.
    - **Exemplo**:
      ```robot
      ${resultado}=    Reverse String    exemplo
      Log    ${resultado}  # saída: olpmexe
      ```

### Conclusão

A `String` library no Robot Framework é uma poderosa ferramenta para manipulação e verificação de strings dentro dos testes automatizados. Conhecer esses métodos permite que você realize uma ampla variedade de operações em strings, desde simples conversões até verificações avançadas usando expressões regulares, tornando seus testes mais versáteis e precisos.