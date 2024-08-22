# Lista de 20 exercícios para você praticar com a página criada no exemplo anterior, utilizando o Robot Framework e a biblioteca Browser. Esses exercícios cobrem diferentes estados dos elementos, permitindo praticar interações e esperas.

### Lista de 20 Exercícios para Praticar

1. **Verificar o Título da Página**: Escreva um teste que abre a página e verifica se o título da página é "Prática de Estados de Elementos".

2. **Esperar que o Botão Dinâmico Fique Habilitado**: Escreva um teste que espera o botão "Clique-me" (`#dynamicBtn`) ficar habilitado antes de clicar nele.

3. **Verificar o Estado do Checkbox Inicialmente**: Verifique se o checkbox (`#checkbox`) está desmarcado ao carregar a página.

4. **Marcar o Checkbox e Verificar o Estado**: Escreva um teste que marque o checkbox e verifique se o estado do checkbox é `checked`.

5. **Selecionar uma Opção no Dropdown**: Escreva um teste que selecione a "Opção 2" no dropdown (`#dropdown`) e verifique se essa opção foi selecionada corretamente.

6. **Verificar que o Botão de Enviar está Habilitado**: Verifique se o botão de envio (`#submitBtn`) está habilitado desde o início.

7. **Validar o Campo de Texto em Branco**: Escreva um teste que clique no botão de envio com o campo de texto (`#inputField`) vazio e verifique se o alerta de erro é exibido.

8. **Preencher o Campo de Texto e Submeter o Formulário**: Preencha o campo de texto com "Teste de Robot Framework" e clique no botão de envio, verificando se o formulário foi enviado com sucesso.

9. **Alternar a Visibilidade da Mensagem**: Escreva um teste que clique no botão "Mostrar/Esconder Mensagem" (`#toggleVisibilityBtn`) e verifique se a mensagem aparece e desaparece conforme esperado.

10. **Verificar o Estado Inicial da Mensagem**: Verifique se a mensagem (`#message`) está oculta (`hidden`) ao carregar a página.

11. **Esperar até que o Botão Dinâmico Fique Visível**: Modifique o comportamento da página para que o botão "Clique-me" seja ocultado inicialmente. Em seguida, escreva um teste que espera o botão se tornar visível antes de clicar nele.

12. **Selecionar Cada Opção do Dropdown**: Crie um teste que percorre todas as opções do dropdown e verifica se cada uma delas pode ser selecionada corretamente.

13. **Interagir com o Checkbox e Verificar o Estado**: Escreva um teste que marque e desmarque o checkbox e verifique o estado após cada interação.

14. **Preencher e Limpar o Campo de Texto**: Preencha o campo de texto com "Texto de Teste", depois limpe-o e verifique se o campo está vazio.

15. **Submeter o Formulário com Diferentes Textos**: Crie um teste que preenche o campo de texto com diferentes valores ("Teste 1", "Teste 2", etc.) e submete o formulário cada vez, verificando se o envio é bem-sucedido.

16. **Esperar o Tempo de Habilitação do Botão Dinâmico**: Crie um teste que define um tempo limite para esperar o botão dinâmico (`#dynamicBtn`) ficar habilitado e clique nele assim que estiver disponível.

17. **Verificar se a Mensagem Continua Visível após Alternância**: Clique no botão de alternância de visibilidade duas vezes e verifique se a mensagem está visível após a segunda alternância.

18. **Verificar a Habilitação do Botão após Submissão Inválida**: Verifique se o botão "Enviar" continua habilitado após uma tentativa de submissão inválida (campo de texto vazio).

19. **Testar a Presença de Elementos na Página**: Escreva um teste que verifica se todos os elementos (`#dynamicBtn`, `#checkbox`, `#dropdown`, `#inputField`, `#submitBtn`, `#toggleVisibilityBtn`) estão presentes na página ao carregá-la.

20. **Esperar pela Estabilidade da Página Antes de Clicar**: Escreva um teste que espera que a página esteja estável (sem mudanças de layout) antes de clicar no botão "Enviar" ou "Clique-me".

---

### Dicas para Implementação

- Utilize `Wait For Elements State` para esperar que os elementos estejam em estados específicos como `enabled`, `visible`, ou `hidden`.
- Use `Should Be Checked` e `Should Be Unchecked` para verificar o estado do checkbox.
- Verifique o valor selecionado no dropdown com a palavra-chave `Get Selected Value`.
- Use a palavra-chave `Wait Until Element Is Visible` ou `Wait Until Element Is Not Visible` para lidar com visibilidade da mensagem.

Esses exercícios cobrem várias interações e estados dos elementos, ajudando a dominar esperas, sincronização e verificação de estados no Robot Framework com a biblioteca Browser.