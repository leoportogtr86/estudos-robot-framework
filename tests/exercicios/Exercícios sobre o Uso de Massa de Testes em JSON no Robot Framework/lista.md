### Exercícios sobre o Uso de Massa de Testes em JSON no Robot Framework

1. **Leitura de Dados Simples de um Arquivo JSON**
   - **Objetivo**: Praticar a leitura de um arquivo JSON.
   - **Tarefa**: Crie um arquivo JSON contendo informações de um único usuário e um produto. Em um caso de teste, carregue esses dados e registre-os no log.

2. **Acessando Valores Específicos no JSON**
   - **Objetivo**: Acessar e utilizar valores específicos do JSON em um teste.
   - **Tarefa**: Crie um arquivo JSON contendo uma lista de produtos. Em um caso de teste, carregue o arquivo JSON, acesse o nome do primeiro produto na lista e verifique se ele corresponde ao valor esperado.

3. **Iteração Sobre uma Lista de Objetos no JSON**
   - **Objetivo**: Iterar sobre uma lista de objetos em um arquivo JSON.
   - **Tarefa**: Crie um arquivo JSON com uma lista de usuários. Em um caso de teste, itere sobre essa lista e registre o nome de cada usuário no log.

4. **Uso de Dados JSON em um Cenário de Login**
   - **Objetivo**: Utilizar dados de um arquivo JSON para realizar login com diferentes usuários.
   - **Tarefa**: Crie um arquivo JSON com informações de login para três usuários diferentes. Em um caso de teste, use esses dados para realizar login em um site, verificando se o login foi bem-sucedido para cada usuário.

5. **Criação de Keywords Customizadas com JSON**
   - **Objetivo**: Criar uma keyword personalizada que usa dados JSON.
   - **Tarefa**: Crie uma keyword chamada `Validar Produto` que aceita um produto do JSON como argumento e verifica seu nome e preço em uma página web. Use essa keyword em um caso de teste que valide vários produtos.

6. **Verificação Condicional Usando JSON**
   - **Objetivo**: Implementar lógica condicional com base nos dados JSON.
   - **Tarefa**: Crie um arquivo JSON com informações de usuários, incluindo uma flag `isAdmin`. Em um caso de teste, use uma keyword condicional para verificar se o usuário é administrador e, se for, exiba uma mensagem de boas-vindas especial.

7. **Manipulação de Dados JSON em Tempo de Execução**
   - **Objetivo**: Modificar dados JSON durante a execução do teste.
   - **Tarefa**: Carregue um arquivo JSON com dados de um produto. Durante o teste, modifique o preço do produto e salve o JSON modificado em um novo arquivo. Verifique se o novo arquivo contém o preço atualizado.

8. **Validação de Estrutura JSON**
   - **Objetivo**: Verificar se a estrutura de um JSON está correta.
   - **Tarefa**: Crie um arquivo JSON e um caso de teste que verifica se todas as chaves esperadas (`nome`, `email`, `senha`) estão presentes no JSON carregado.

9. **Combinação de Dados de Múltiplos Arquivos JSON**
   - **Objetivo**: Combinar dados de diferentes arquivos JSON em um único teste.
   - **Tarefa**: Crie dois arquivos JSON, um com informações de usuários e outro com informações de produtos. Em um caso de teste, carregue ambos os arquivos e use os dados combinados para verificar se um determinado usuário pode comprar um produto específico.

10. **Uso de JSON em um Teste de API**
    - **Objetivo**: Enviar dados JSON em uma requisição de API.
    - **Tarefa**: Crie um arquivo JSON contendo dados de uma nova conta de usuário. Em um caso de teste, use esses dados para enviar uma requisição POST a uma API de criação de usuário e verifique a resposta da API para garantir que a conta foi criada com sucesso.

### Como Praticar

- **Configuração**: Para cada exercício, crie um novo arquivo `.robot` e implemente o caso de teste conforme descrito.
- **Execução**: Use o comando `robot` para executar os testes e observe como os dados JSON são manipulados e aplicados em diferentes cenários de teste.
- **Validação**: Verifique se os testes são executados corretamente, com os dados JSON sendo lidos, manipulados e utilizados conforme o esperado. Faça ajustes conforme necessário.

Esses exercícios ajudarão você a dominar o uso de massa de testes em JSON no Robot Framework, permitindo que você crie testes automatizados mais dinâmicos e robustos.