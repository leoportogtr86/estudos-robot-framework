Aqui está uma lista de 10 exercícios práticos para ajudar a solidificar a compreensão do **uso de keywords e criação de keywords customizadas** no Robot Framework:

### Exercícios sobre o Uso de Keywords e Criação de Keywords Customizadas

1. **Criação de Keyword Simples**
   - **Objetivo**: Criar uma keyword customizada simples que encapsula uma única ação.
   - **Tarefa**: Crie uma keyword chamada `Abrir Página Inicial` que abre o navegador e acessa a página `https://example.com`. Use essa keyword em um caso de teste para verificar se a página inicial é carregada corretamente.

2. **Keyword com Argumentos**
   - **Objetivo**: Criar uma keyword customizada que aceite argumentos.
   - **Tarefa**: Crie uma keyword chamada `Preencher Formulário de Contato` que aceite `nome`, `email` e `mensagem` como argumentos e preencha um formulário de contato. Use essa keyword em um caso de teste para enviar uma mensagem de contato.

3. **Reutilização de Keywords**
   - **Objetivo**: Reutilizar uma keyword customizada em múltiplos casos de teste.
   - **Tarefa**: Crie uma keyword chamada `Realizar Login` e use-a em dois casos de teste diferentes: um para login com credenciais válidas e outro para login com credenciais inválidas.

4. **Criação de Keyword com Lógica Condicional**
   - **Objetivo**: Implementar lógica condicional dentro de uma keyword customizada.
   - **Tarefa**: Crie uma keyword chamada `Verificar Login` que verifique se o nome de usuário é "admin". Se for, registre uma mensagem "Admin logado". Caso contrário, apenas faça o login normalmente. Use essa keyword em um caso de teste.

5. **Organização de Keywords em Arquivo de Recursos**
   - **Objetivo**: Organizar keywords em um arquivo de recursos para reutilização.
   - **Tarefa**: Crie um arquivo de recursos `login_resource.robot` que contenha a keyword `Realizar Login`. Importe este recurso em um arquivo de teste separado e use a keyword em diferentes casos de teste.

6. **Criação de Keyword para Verificação de Conteúdo**
   - **Objetivo**: Criar uma keyword customizada que verifique se uma página contém um texto específico.
   - **Tarefa**: Crie uma keyword chamada `Verificar Texto na Página` que aceite um argumento de texto e use `Page Should Contain` para verificar se o texto está presente. Use essa keyword em um caso de teste para verificar o conteúdo de uma página web.

7. **Keyword com Interação com Variáveis**
   - **Objetivo**: Usar variáveis dentro de uma keyword customizada.
   - **Tarefa**: Crie uma keyword chamada `Calcular Soma` que aceite dois números como argumentos, some-os e registre o resultado no log. Use variáveis para armazenar os números e o resultado.

8. **Keyword para Login com Diferentes Usuários**
   - **Objetivo**: Criar uma keyword que permita login com múltiplos usuários.
   - **Tarefa**: Crie uma keyword chamada `Login Com Usuário` que aceite um dicionário como argumento contendo `username` e `password`. Use essa keyword para realizar login com diferentes usuários em casos de teste separados.

9. **Uso de Keywords para Manipulação de Arquivos**
   - **Objetivo**: Criar uma keyword que crie e verifique arquivos no sistema.
   - **Tarefa**: Crie uma keyword chamada `Criar e Verificar Arquivo` que crie um arquivo com um nome e conteúdo especificados e verifique se o arquivo foi criado corretamente. Use essa keyword em um caso de teste.

10. **Keyword com Execução de Múltiplas Ações**
    - **Objetivo**: Criar uma keyword customizada que execute várias ações em sequência.
    - **Tarefa**: Crie uma keyword chamada `Preparar Ambiente` que abra o navegador, faça login, e navegue para uma página específica. Use essa keyword em um caso de teste que envolva múltiplos passos de configuração.

### Como Praticar

- **Configuração**: Para cada exercício, crie um novo arquivo `.robot` e implemente o caso de teste conforme descrito.
- **Execução**: Use o comando `robot` para executar os testes e observe como as keywords personalizadas são aplicadas.
- **Validação**: Verifique se os testes executam corretamente, com as keywords personalizadas funcionando conforme o esperado. Faça ajustes conforme necessário.

Esses exercícios ajudarão você a dominar a criação e uso de keywords customizadas, permitindo que você construa testes automatizados mais modulares, reutilizáveis e fáceis de manter no Robot Framework.