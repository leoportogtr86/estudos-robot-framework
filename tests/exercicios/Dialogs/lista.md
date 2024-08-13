Aqui está uma lista de 10 exercícios práticos para praticar o uso da **Dialogs** library do Robot Framework:

### Exercícios Práticos sobre a Dialogs Library

1. **Solicitação de Valor ao Usuário**
   - **Objetivo**: Solicitar ao usuário que insira um valor.
   - **Tarefa**: Crie um test case que solicite ao usuário que insira seu nome usando `Get Value From User` e registre o nome no log.

2. **Seleção de Opção pelo Usuário**
   - **Objetivo**: Apresentar uma lista de opções para o usuário escolher.
   - **Tarefa**: Crie um test case que apresente ao usuário as opções "Sim" e "Não" usando `Get Selection From User` e registre a opção escolhida no log.

3. **Pausa na Execução com Mensagem**
   - **Objetivo**: Pausar a execução do teste e exibir uma mensagem.
   - **Tarefa**: Crie um test case que pause a execução e exiba uma mensagem de "Pressione OK para continuar" usando `Pause Execution`.

4. **Confirmação de Ação pelo Usuário**
   - **Objetivo**: Solicitar uma confirmação (OK/Cancel) do usuário antes de continuar.
   - **Tarefa**: Crie um test case que peça ao usuário para confirmar se deseja continuar com a execução usando `Confirm Action` e registre a resposta no log.

5. **Solicitação de Arquivo ao Usuário**
   - **Objetivo**: Solicitar ao usuário que selecione um arquivo.
   - **Tarefa**: Crie um test case que peça ao usuário para selecionar um arquivo usando `Get File Path From User` e registre o caminho do arquivo selecionado no log.

6. **Solicitação de Diretório ao Usuário**
   - **Objetivo**: Solicitar ao usuário que selecione um diretório.
   - **Tarefa**: Crie um test case que peça ao usuário para selecionar um diretório usando `Get Directory Path From User` e registre o caminho do diretório selecionado no log.

7. **Entrada de Texto**
   - **Objetivo**: Solicitar que o usuário insira um texto.
   - **Tarefa**: Crie um test case que solicite ao usuário para inserir uma descrição usando `Input Text` e registre a entrada no log.

8. **Entrada de Número**
   - **Objetivo**: Solicitar que o usuário insira um número.
   - **Tarefa**: Crie um test case que solicite ao usuário para inserir sua idade usando `Input Number` e registre o número no log.

9. **Caixa de Alerta**
   - **Objetivo**: Exibir uma mensagem de alerta que o usuário deve reconhecer.
   - **Tarefa**: Crie um test case que exiba uma mensagem de alerta "Atenção! Esta ação é irreversível." usando `Alert` e registre no log quando o alerta for reconhecido.

10. **Execução de Passo Manual**
    - **Objetivo**: Pausar a execução para uma ação manual e registrar o resultado.
    - **Tarefa**: Crie um test case que pause para uma verificação manual de uma condição (por exemplo, "Verificar se o botão X está visível") usando `Execute Manual Step`. Registre o resultado no log (sucesso ou falha).

### Como Praticar

- **Configuração**: Para cada exercício, crie um novo arquivo `.robot` e implemente o test case conforme descrito.
- **Execução**: Use o comando `robot` para executar os testes e interaja com os diálogos conforme necessário.
- **Validação**: Verifique se as interações do usuário estão sendo capturadas e registradas corretamente, e faça ajustes conforme necessário.

Esses exercícios ajudarão você a dominar a `Dialogs` library, permitindo que você crie testes interativos que envolvem entradas e confirmações do usuário, tornando seus testes mais dinâmicos e flexíveis no Robot Framework.