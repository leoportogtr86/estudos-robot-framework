### Exercícios: Estrutura de Test Suites

1. **Criar uma Test Suite Simples**
   - **Objetivo**: Organizar múltiplos test cases em uma única suite.
   - **Tarefa**: Crie uma suite de teste que contenha pelo menos dois test cases simples e execute a suite.

2. **Organizar Test Cases em Diferentes Arquivos**
   - **Objetivo**: Distribuir test cases em diferentes arquivos `.robot`.
   - **Tarefa**: Crie dois arquivos `.robot` e organize os test cases em cada um deles. Execute todos os testes usando um único comando.

3. **Executar Sub-Suites de Testes**
   - **Objetivo**: Executar apenas uma parte de uma suite maior.
   - **Tarefa**: Organize test cases em subdiretórios e execute apenas uma sub-suite específica.

4. **Usar Suite Setup e Teardown**
   - **Objetivo**: Configurar o ambiente de teste antes de executar todos os test cases em uma suite.
   - **Tarefa**: Use `Suite Setup` para abrir o navegador no início da suite e `Suite Teardown` para fechá-lo ao final.

5. **Executar Múltiplas Suites**
   - **Objetivo**: Executar múltiplas suites de teste de uma só vez.
   - **Tarefa**: Crie duas ou mais suites em diretórios diferentes e execute todas as suites simultaneamente.

6. **Criar uma Suite com Configurações Globais**
   - **Objetivo**: Aplicar configurações que afetem todos os test cases dentro de uma suite.
   - **Tarefa**: Defina variáveis ou configurações na seção `Settings` de uma suite e use-as em todos os test cases.

7. **Organizar Suites por Funcionalidade**
   - **Objetivo**: Agrupar test cases por funcionalidade dentro de uma aplicação.
   - **Tarefa**: Crie diferentes suites para funcionalidades como login, cadastro, e navegação, e organize os test cases de acordo.

8. **Executar Suites com Base em Tags**
   - **Objetivo**: Executar apenas certas suites ou test cases baseados em tags.
   - **Tarefa**: Adicione tags às suites e use a opção `--include` para executar apenas suites com determinadas tags.

9. **Documentar Suites de Testes**
   - **Objetivo**: Fornecer uma descrição detalhada do propósito da suite de testes.
   - **Tarefa**: Adicione uma descrição detalhada na seção `[Documentation]` de uma suite de testes.

10. **Criar uma Suite de Regressão**
    - **Objetivo**: Criar uma suite que execute uma série de testes de regressão para validar a estabilidade da aplicação.
    - **Tarefa**: Organize seus test cases mais críticos em uma suite de regressão e execute-a após cada nova build.
