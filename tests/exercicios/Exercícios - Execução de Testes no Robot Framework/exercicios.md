### Exercícios: Execução de Testes no Robot Framework

#### Exercício 1: Execução Básica de Testes
- **Objetivo**: Executar um arquivo de teste simples no Robot Framework.
- **Tarefa**: Crie um arquivo `.robot` com dois casos de teste simples e execute-o usando o comando básico `robot`.

#### Exercício 2: Executar Teste por Título
- **Objetivo**: Executar um caso de teste específico pelo nome.
- **Tarefa**: Use a opção `--test` para executar um único caso de teste pelo seu título em um arquivo que contém múltiplos casos.

#### Exercício 3: Filtrar Testes por Tags
- **Objetivo**: Filtrar e executar testes com base em tags.
- **Tarefa**: Adicione tags a diferentes casos de teste e execute apenas aqueles com uma tag específica usando a opção `--include`.

#### Exercício 4: Excluir Testes por Tags
- **Objetivo**: Executar testes enquanto exclui alguns com base em tags.
- **Tarefa**: Use a opção `--exclude` para executar todos os testes, exceto aqueles marcados com uma tag específica.

#### Exercício 5: Executar Testes em Suítes Específicas
- **Objetivo**: Executar uma suíte específica de testes.
- **Tarefa**: Organize seus testes em diferentes suítes (arquivos `.robot`) e execute uma suíte específica usando a opção `--suite`.

#### Exercício 6: Executar Testes Críticos e Não Críticos
- **Objetivo**: Executar apenas testes críticos ou não críticos.
- **Tarefa**: Marque alguns casos de teste como críticos e outros como não críticos, e use as opções `--critical` e `--noncritical` para executar apenas um tipo de teste.

#### Exercício 7: Executar Testes com Variáveis Dinâmicas
- **Objetivo**: Executar testes passando variáveis dinâmicas durante a execução.
- **Tarefa**: Crie um teste que utiliza variáveis para URL e usuário. Execute o teste passando valores diferentes para essas variáveis usando a opção `--variable`.

#### Exercício 8: Executar Testes em Paralelo
- **Objetivo**: Executar testes em paralelo para otimizar o tempo de execução.
- **Tarefa**: Instale o `pabot` e execute uma suíte de testes com múltiplos processos em paralelo.

#### Exercício 9: Reexecutar Testes que Falharam
- **Objetivo**: Reexecutar automaticamente os testes que falharam.
- **Tarefa**: Simule falhas em alguns testes e use a opção `--rerunfailed` para reexecutar apenas os testes que falharam.

#### Exercício 10: Customizar Relatórios e Logs
- **Objetivo**: Customizar o nome e formato dos relatórios e logs gerados pelos testes.
- **Tarefa**: Execute uma suíte de testes e use as opções `--report`, `--log`, e `--xunit` para gerar relatórios personalizados e logs em diferentes formatos.

### Conclusão

Esses exercícios são projetados para ajudá-lo a entender e aplicar diferentes técnicas de execução de testes no Robot Framework. Eles cobrem desde o básico, como executar testes específicos, até técnicas mais avançadas, como executar testes em paralelo e reexecutar testes falhos. Praticando esses exercícios, você estará preparado para lidar com uma ampla variedade de cenários de execução de testes em seus projetos.