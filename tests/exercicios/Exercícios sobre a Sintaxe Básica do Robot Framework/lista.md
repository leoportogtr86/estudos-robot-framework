Aqui está uma lista de 10 exercícios práticos para ajudar a solidificar a compreensão da **sintaxe básica** do Robot Framework:

### Exercícios sobre a Sintaxe Básica do Robot Framework

1. **Criação de um Arquivo de Teste Simples**
   - **Objetivo**: Criar um arquivo de teste básico no Robot Framework.
   - **Tarefa**: Crie um arquivo `.robot` que contenha uma seção `*** Settings ***` com a importação da `SeleniumLibrary` e uma seção `*** Test Cases ***` com um único caso de teste que abre um navegador e acessa a página `https://example.com`.

2. **Definição e Uso de Variáveis**
   - **Objetivo**: Declarar e utilizar variáveis em um arquivo de teste.
   - **Tarefa**: Crie um arquivo `.robot` que contenha uma seção `*** Variables ***` para definir a URL de um site e o nome de usuário. Em seguida, utilize essas variáveis em um caso de teste que faz login no site.

3. **Criação de Palavras-Chave Customizadas**
   - **Objetivo**: Definir palavras-chave personalizadas e reutilizá-las em diferentes casos de teste.
   - **Tarefa**: Crie uma palavra-chave personalizada chamada `Realizar Login` que aceite `username` e `password` como argumentos. Use esta palavra-chave em dois casos de teste que fazem login com diferentes credenciais.

4. **Uso de Comentários**
   - **Objetivo**: Adicionar comentários para documentar um arquivo de teste.
   - **Tarefa**: Crie um caso de teste e adicione comentários explicando cada etapa do teste. Utilize o símbolo `#` para inserir comentários no arquivo.

5. **Manipulação de Erros**
   - **Objetivo**: Manipular erros de forma controlada durante a execução de um teste.
   - **Tarefa**: Crie um caso de teste que tente acessar uma página inexistente e use a keyword `Run Keyword And Expect Error` para verificar se uma mensagem de erro é exibida corretamente.

6. **Execução Condicional de Keywords**
   - **Objetivo**: Executar uma keyword condicionalmente com base no valor de uma variável.
   - **Tarefa**: Crie um caso de teste que verifique se um usuário está logado e, se não estiver, execute a palavra-chave `Realizar Login`.

7. **Uso de Variáveis de Lista**
   - **Objetivo**: Declarar e utilizar uma variável de lista.
   - **Tarefa**: Crie uma lista de URLs na seção `*** Variables ***` e crie um caso de teste que abra cada URL em uma nova aba do navegador usando um loop.

8. **Criação e Reutilização de Recursos**
   - **Objetivo**: Criar um arquivo de recursos e reutilizá-lo em diferentes arquivos de teste.
   - **Tarefa**: Crie um arquivo de recurso `.robot` que contenha a palavra-chave `Realizar Login`. Em seguida, importe este recurso em um arquivo de teste separado e utilize a palavra-chave.

9. **Configuração de Setup e Teardown**
   - **Objetivo**: Configurar ações de preparação e finalização para casos de teste.
   - **Tarefa**: Crie um caso de teste que defina um `Setup` para abrir o navegador antes do teste e um `Teardown` para fechar o navegador após o teste.

10. **Uso de `Should Be Equal` para Verificação**
    - **Objetivo**: Verificar se dois valores são iguais.
    - **Tarefa**: Crie um caso de teste que calcule a soma de dois números e use `Should Be Equal` para verificar se o resultado é o esperado.

### Como Praticar

- **Configuração**: Para cada exercício, crie um novo arquivo `.robot` e implemente o caso de teste conforme descrito.
- **Execução**: Use o comando `robot` para executar os testes e observe os resultados nos arquivos de log e report gerados.
- **Validação**: Verifique se os casos de teste são executados corretamente e se os resultados estão de acordo com o esperado. Faça ajustes conforme necessário.

Esses exercícios ajudarão você a praticar e entender a sintaxe básica do Robot Framework, preparando-o para criar e manter testes automatizados de forma eficaz.