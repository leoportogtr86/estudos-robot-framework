Aqui está uma lista de 10 exercícios práticos para praticar o uso da **Collections** library do Robot Framework:

### Exercícios Práticos sobre a Collections Library

1. **Criação de Lista Simples**
   - **Objetivo**: Criar uma lista e verificar se ela contém um item específico.
   - **Tarefa**: Crie um test case que crie uma lista com três elementos e verifique se um dos elementos está presente na lista usando `List Should Contain`.

2. **Adição de Item à Lista**
   - **Objetivo**: Adicionar um item a uma lista existente.
   - **Tarefa**: Crie um test case que crie uma lista com dois elementos e adicione um terceiro item à lista usando `Append To List`. Em seguida, verifique se o item foi adicionado.

3. **Remoção de Item da Lista**
   - **Objetivo**: Remover um item de uma lista com base em sua posição.
   - **Tarefa**: Crie um test case que remova o segundo item de uma lista contendo três elementos usando `Remove From List`.

4. **Contagem de Itens em Lista**
   - **Objetivo**: Contar o número de itens em uma lista.
   - **Tarefa**: Crie um test case que conte o número de itens em uma lista usando `Get List Length` e verifique se o valor retornado é o esperado.

5. **Manipulação de Dicionário**
   - **Objetivo**: Criar e manipular um dicionário.
   - **Tarefa**: Crie um test case que crie um dicionário com três pares chave-valor, adicione um novo par ao dicionário usando `Set To Dictionary`, e verifique se o dicionário contém a nova chave.

6. **Busca de Valor no Dicionário**
   - **Objetivo**: Verificar a presença de uma chave em um dicionário e obter seu valor.
   - **Tarefa**: Crie um test case que verifique se uma chave específica está presente no dicionário usando `Dictionary Should Contain Key`, e depois obtenha o valor associado a essa chave usando `Get Value From Dictionary`.

7. **Conversão de Lista em Dicionário**
   - **Objetivo**: Converter uma lista de pares chave-valor em um dicionário.
   - **Tarefa**: Crie um test case que converta uma lista com pares chave-valor para um dicionário usando `Convert To Dictionary`, e verifique o valor de uma chave específica.

8. **Ordenação de Lista**
   - **Objetivo**: Ordenar os itens de uma lista.
   - **Tarefa**: Crie um test case que crie uma lista com cinco números em ordem aleatória e os ordene em ordem crescente usando `Sort List`.

9. **Inversão de Lista**
   - **Objetivo**: Inverter a ordem dos itens em uma lista.
   - **Tarefa**: Crie um test case que crie uma lista com três elementos e inverta a ordem dos itens usando `Reverse List`.

10. **Remoção de Duplicatas**
    - **Objetivo**: Remover itens duplicados de uma lista.
    - **Tarefa**: Crie um test case que crie uma lista contendo elementos duplicados, remova as duplicatas usando `Remove Duplicates`, e verifique se a lista resultante contém apenas elementos únicos.

### Como Praticar

- **Configuração**: Para cada exercício, crie um novo arquivo `.robot` e implemente o test case conforme descrito.
- **Execução**: Use o comando `robot` para executar os testes e verifique os resultados nos logs gerados.
- **Validação**: Verifique se os resultados estão de acordo com o esperado e faça ajustes conforme necessário.

Esses exercícios ajudarão você a dominar a manipulação de listas e dicionários usando a `Collections` library, o que é fundamental para o desenvolvimento de testes automatizados eficazes no Robot Framework.