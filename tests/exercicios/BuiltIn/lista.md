Aqui está uma lista de 10 exercícios práticos para praticar o uso da **BuiltIn** library do Robot Framework:

### Exercícios Práticos sobre a BuiltIn Library

1. **Verificação de Igualdade Simples**
   - **Objetivo**: Verificar se dois valores são iguais usando `Should Be Equal`.
   - **Tarefa**: Crie um test case que compare dois números inteiros e verifique se eles são iguais.

2. **Execução Condicional**
   - **Objetivo**: Executar uma keyword condicionalmente com `Run Keyword If`.
   - **Tarefa**: Crie um test case que verifique se uma variável tem um valor específico e, se for verdade, registre uma mensagem no log.

3. **Execução Múltipla de Keywords**
   - **Objetivo**: Executar várias keywords em sequência usando `Run Keywords`.
   - **Tarefa**: Crie um test case que registre três mensagens diferentes no log usando uma única chamada de `Run Keywords`.

4. **Definição de Variável de Teste**
   - **Objetivo**: Definir uma variável local para um test case usando `Set Test Variable`.
   - **Tarefa**: Crie um test case que defina uma variável com um valor de string e use essa variável em uma verificação de igualdade.

5. **Falha Forçada**
   - **Objetivo**: Forçar a falha de um test case usando `Fail`.
   - **Tarefa**: Crie um test case que falhe propositalmente com uma mensagem personalizada.

6. **Comparação de Comprimentos**
   - **Objetivo**: Verificar o comprimento de uma string ou lista usando `Get Length`.
   - **Tarefa**: Crie um test case que conte o número de caracteres em uma string e verifique se ele é igual a um valor esperado.

7. **Conversão de Tipo**
   - **Objetivo**: Converter um valor para string usando `Convert To String`.
   - **Tarefa**: Crie um test case que converta um número inteiro para string e verifique se a conversão foi bem-sucedida.

8. **Pausa na Execução**
   - **Objetivo**: Pausar a execução do teste por um tempo específico usando `Sleep`.
   - **Tarefa**: Crie um test case que pause a execução por 5 segundos e depois registre uma mensagem no log.

9. **Importação Dinâmica de Biblioteca**
   - **Objetivo**: Importar uma biblioteca durante a execução do teste usando `Import Library`.
   - **Tarefa**: Crie um test case que importe a `SeleniumLibrary` e depois use uma keyword dessa biblioteca para abrir um navegador.

10. **Definição de Nível de Log**
    - **Objetivo**: Alterar o nível de log do teste usando `Set Log Level`.
    - **Tarefa**: Crie um test case que ajuste o nível de log para `DEBUG` e registre uma mensagem de depuração.

### Como Praticar

- **Configuração**: Para cada exercício, crie um novo arquivo `.robot` e implemente o test case conforme descrito.
- **Execução**: Use o comando `robot` para executar os testes e verifique os resultados nos logs gerados.
- **Validação**: Verifique se os resultados estão de acordo com o esperado e faça ajustes conforme necessário.

Esses exercícios ajudarão você a dominar as funcionalidades básicas e intermediárias da `BuiltIn` library, fornecendo uma base sólida para a criação de testes automatizados robustos no Robot Framework.