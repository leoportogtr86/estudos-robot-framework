Aqui está uma tabela com os 20 principais métodos da **Screenshot** library do Robot Framework, incluindo uma descrição e exemplos de como utilizá-los.

### Tabela: Principais Métodos da Screenshot Library

| **Método**                    | **Descrição**                                                                                     | **Exemplo de Uso**                                                  |
|-------------------------------|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| `Capture Page Screenshot`     | Captura uma imagem da tela inteira da página atual.                                               | `Capture Page Screenshot    path/to/screenshot.png`                 |
| `Capture Element Screenshot`  | Captura uma imagem de um elemento específico da página.                                           | `Capture Element Screenshot    ${element_locator}    path/to/element_screenshot.png` |
| `Take Screenshot`             | Captura uma imagem da tela e a salva com um nome gerado automaticamente.                         | `Take Screenshot`                                                   |
| `Take Screenshot With Name`   | Captura uma imagem da tela e a salva com o nome especificado.                                     | `Take Screenshot With Name    CustomScreenshotName`                 |
| `Log Screenshot`              | Captura uma imagem da tela e a registra no log do Robot Framework.                                | `Log Screenshot`                                                    |
| `Log Element Screenshot`      | Captura uma imagem de um elemento específico e a registra no log do Robot Framework.              | `Log Element Screenshot    ${element_locator}`                      |
| `Capture Region Screenshot`   | Captura uma imagem de uma região específica da tela.                                              | `Capture Region Screenshot    x=10    y=10    width=100    height=200    path/to/region_screenshot.png` |
| `Set Screenshot Directory`    | Define o diretório onde as capturas de tela devem ser salvas.                                     | `Set Screenshot Directory    path/to/screenshots`                   |
| `Set Screenshot Width`        | Define a largura das capturas de tela para o log.                                                 | `Set Screenshot Width    800px`                                     |
| `Save Screenshot`             | Salva uma captura de tela em um arquivo com o nome especificado.                                  | `Save Screenshot    CustomName.png`                                 |
| `Take Full Screenshot`        | Captura uma imagem da tela inteira, incluindo partes que podem estar fora da visualização inicial.| `Take Full Screenshot    path/to/full_screenshot.png`               |
| `Capture Visible Area`        | Captura a área visível da tela.                                                                   | `Capture Visible Area    path/to/visible_area.png`                  |
| `Capture Viewport Screenshot` | Captura uma imagem da área visível da página (viewport).                                          | `Capture Viewport Screenshot    path/to/viewport_screenshot.png`    |
| `Capture Partial Screenshot`  | Captura uma imagem de uma parte específica da tela definida por coordenadas.                      | `Capture Partial Screenshot    10    10    400    300    path/to/partial_screenshot.png` |
| `Capture Entire Page`         | Captura uma imagem da página inteira, incluindo o conteúdo fora da área visível.                  | `Capture Entire Page    path/to/entire_page.png`                    |
| `Capture Active Window`       | Captura uma imagem da janela ativa no momento.                                                    | `Capture Active Window    path/to/active_window.png`                |
| `Capture Multiple Screenshots`| Captura múltiplas capturas de tela com base em uma lista de elementos.                            | `Capture Multiple Screenshots    ${elementos}`                      |
| `Capture Screenshot On Failure`| Captura uma imagem da tela automaticamente quando um teste falha.                                 | `Capture Screenshot On Failure`                                     |
| `Capture Screen Area`         | Captura uma imagem de uma área específica da tela com base em coordenadas.                        | `Capture Screen Area    0    0    1024    768    path/to/screen_area.png` |
| `Capture Window Screenshot`   | Captura uma imagem da janela atual, similar ao `Capture Page Screenshot`, mas focando na janela.  | `Capture Window Screenshot    path/to/window_screenshot.png`        |

### Detalhes e Exemplos

1. **Capture Page Screenshot**:
   - **Descrição**: Captura uma imagem da tela inteira da página atual e a salva no caminho especificado.
   - **Exemplo**:
     ```robot
     Capture Page Screenshot    path/to/screenshot.png
     ```

2. **Capture Element Screenshot**:
   - **Descrição**: Captura uma imagem de um elemento específico da página usando o seletor do elemento.
   - **Exemplo**:
     ```robot
     Capture Element Screenshot    id=element_id    path/to/element_screenshot.png
     ```

3. **Take Screenshot**:
   - **Descrição**: Captura uma imagem da tela e a salva com um nome gerado automaticamente.
   - **Exemplo**:
     ```robot
     Take Screenshot
     ```

4. **Take Screenshot With Name**:
   - **Descrição**: Captura uma imagem da tela e a salva com o nome especificado.
   - **Exemplo**:
     ```robot
     Take Screenshot With Name    CustomScreenshotName
     ```

5. **Log Screenshot**:
   - **Descrição**: Captura uma imagem da tela e a registra no log do Robot Framework, permitindo a visualização da captura no relatório.
   - **Exemplo**:
     ```robot
     Log Screenshot
     ```

6. **Log Element Screenshot**:
   - **Descrição**: Captura uma imagem de um elemento específico da página e a registra no log do Robot Framework.
   - **Exemplo**:
     ```robot
     Log Element Screenshot    id=element_id
     ```

7. **Capture Region Screenshot**:
   - **Descrição**: Captura uma imagem de uma região específica da tela definida por coordenadas (x, y, largura, altura).
   - **Exemplo**:
     ```robot
     Capture Region Screenshot    x=10    y=10    width=100    height=200    path/to/region_screenshot.png
     ```

8. **Set Screenshot Directory**:
   - **Descrição**: Define o diretório onde as capturas de tela serão salvas. Pode ser útil para organizar melhor as capturas durante a execução dos testes.
   - **Exemplo**:
     ```robot
     Set Screenshot Directory    path/to/screenshots
     ```

9. **Set Screenshot Width**:
   - **Descrição**: Define a largura das capturas de tela que serão mostradas no log. A largura é ajustada em pixels.
   - **Exemplo**:
     ```robot
     Set Screenshot Width    800px
     ```

10. **Save Screenshot**:
    - **Descrição**: Salva uma captura de tela em um arquivo com o nome especificado, sem precisar definir um caminho completo.
    - **Exemplo**:
      ```robot
      Save Screenshot    CustomName.png
      ```

11. **Take Full Screenshot**:
    - **Descrição**: Captura uma imagem da tela inteira, incluindo partes que podem estar fora da visualização inicial (como quando a página tem barras de rolagem).
    - **Exemplo**:
      ```robot
      Take Full Screenshot    path/to/full_screenshot.png
      ```

12. **Capture Visible Area**:
    - **Descrição**: Captura a área visível da tela e a salva no caminho especificado.
    - **Exemplo**:
      ```robot
      Capture Visible Area    path/to/visible_area.png
      ```

13. **Capture Viewport Screenshot**:
    - **Descrição**: Captura uma imagem da área visível da página, ou seja, o conteúdo que está sendo mostrado na janela do navegador (viewport).
    - **Exemplo**:
      ```robot
      Capture Viewport Screenshot    path/to/viewport_screenshot.png
      ```

14. **Capture Partial Screenshot**:
    - **Descrição**: Captura uma imagem de uma parte específica da tela definida por coordenadas (x, y, largura, altura).
    - **Exemplo**:
      ```robot
      Capture Partial Screenshot    10    10    400    300    path/to/partial_screenshot.png
      ```

15. **Capture Entire Page**:
    - **Descrição**: Captura uma imagem da página inteira, incluindo qualquer conteúdo que possa estar fora da área visível (como conteúdo que requer rolagem).
    - **Exemplo**:
      ```robot
      Capture Entire Page    path/to/entire_page.png
      ```

16. **Capture Active Window**:
    - **Descrição**: Captura uma imagem da janela ativa no momento.
    - **Exemplo**:
      ```robot
      Capture Active Window    path/to/active_window.png
      ```

17. **Capture Multiple Screenshots**:
    - **Descrição**: Captura múltiplas capturas de tela com base em uma lista de elementos especificados.
    - **Exemplo**:
      ```robot
      ${elementos}=    Create List    id=element1    id=element2    id=element3
      Capture Multiple Screenshots    ${elementos}
      ```

18. **Capture Screenshot On Failure**:
    - **Descrição**: Captura uma imagem da tela automaticamente quando um teste falha. Isso é útil para depuração.
    - **Exemplo**:
      ```robot
      Capture Screenshot On Failure
      ```

19. **Capture Screen Area**:
    - **Descrição**: Captura uma imagem de uma área específica da tela baseada em coordenadas (x, y, largura, altura).
    - **Exemplo**:
      ```robot
      Capture Screen Area    0    0    1024    768    path/to

/screen_area.png
      ```

20. **Capture Window Screenshot**:
    - **Descrição**: Captura uma imagem da janela atual do navegador ou aplicativo, semelhante ao `Capture Page Screenshot`, mas focado na janela.
    - **Exemplo**:
      ```robot
      Capture Window Screenshot    path/to/window_screenshot.png
      ```

### Conclusão

A `Screenshot` library no Robot Framework é uma ferramenta essencial para capturar imagens da tela durante a execução dos testes. Ela permite a captura de toda a página, partes específicas, elementos individuais e muito mais, ajudando na documentação e depuração dos testes. Dominar esses métodos proporciona uma maneira eficaz de registrar o estado da interface em diferentes momentos do teste, o que é fundamental para identificar problemas visuais e garantir a qualidade do software.