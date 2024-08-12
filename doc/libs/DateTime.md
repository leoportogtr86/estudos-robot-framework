Aqui está uma tabela com os 20 principais métodos da **DateTime** library do Robot Framework, incluindo uma descrição e exemplos de como utilizá-los.

### Tabela: Principais Métodos da DateTime Library

| **Método**                    | **Descrição**                                                                                     | **Exemplo de Uso**                                                  |
|-------------------------------|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| `Get Current Date`            | Retorna a data atual.                                                                             | `${data}=    Get Current Date`                                      |
| `Get Current Date Time`       | Retorna a data e a hora atuais.                                                                   | `${data_hora}=    Get Current Date Time`                            |
| `Get Time`                    | Retorna o tempo atual.                                                                            | `${hora}=    Get Time`                                              |
| `Add Time To Date`            | Adiciona ou subtrai tempo (dias, horas, minutos, etc.) a uma data.                                | `${nova_data}=    Add Time To Date    ${data}    5d`                |
| `Subtract Time From Date`     | Subtrai tempo de uma data.                                                                        | `${nova_data}=    Subtract Time From Date    ${data}    3d`         |
| `Subtract Dates`              | Calcula a diferença entre duas datas.                                                             | `${diferenca}=    Subtract Dates    ${data1}    ${data2}`           |
| `Convert Date`                | Converte uma data para um formato específico.                                                     | `${nova_data}=    Convert Date    ${data}    %Y-%m-%d`              |
| `Convert Time`                | Converte um tempo para um formato específico.                                                     | `${novo_tempo}=    Convert Time    ${hora}    %H:%M:%S`             |
| `Get Weekday`                 | Retorna o dia da semana de uma data.                                                              | `${dia_da_semana}=    Get Weekday    ${data}`                       |
| `Get Last Day Of Month`       | Retorna a data do último dia do mês de uma data específica.                                       | `${ultimo_dia}=    Get Last Day Of Month    ${data}`                |
| `Parse Date`                  | Converte uma string em uma data usando um formato específico.                                     | `${data}=    Parse Date    2023-12-01    %Y-%m-%d`                  |
| `Parse Time`                  | Converte uma string em um tempo usando um formato específico.                                     | `${hora}=    Parse Time    12:34:56    %H:%M:%S`                    |
| `Set Date`                    | Define uma nova data a partir de uma data existente, ajustando partes específicas.                | `${nova_data}=    Set Date    ${data}    year=2025`                 |
| `Time Should Be Later Than`   | Verifica se um tempo é posterior a outro.                                                         | `Time Should Be Later Than    ${hora1}    ${hora2}`                 |
| `Time Should Be Earlier Than` | Verifica se um tempo é anterior a outro.                                                          | `Time Should Be Earlier Than    ${hora1}    ${hora2}`               |
| `Time Should Be Between`      | Verifica se um tempo está entre dois outros tempos.                                               | `Time Should Be Between    ${hora}    ${hora_inicio}    ${hora_fim}`|
| `Add Time To Time`            | Adiciona tempo (horas, minutos, segundos) a um horário específico.                                | `${novo_horario}=    Add Time To Time    ${hora}    2h 30m`         |
| `Subtract Time From Time`     | Subtrai tempo de um horário específico.                                                           | `${novo_horario}=    Subtract Time From Time    ${hora}    1h`      |
| `Convert Time To Seconds`     | Converte um horário (HH:MM:SS) para o total de segundos.                                          | `${segundos}=    Convert Time To Seconds    ${hora}`                |
| `Convert Seconds To Time`     | Converte um valor de segundos para o formato HH:MM:SS.                                            | `${hora}=    Convert Seconds To Time    3661`                       |

### Detalhes e Exemplos

1. **Get Current Date**:
   - **Descrição**: Retorna a data atual no formato padrão (YYYY-MM-DD).
   - **Exemplo**:
     ```robot
     ${data}=    Get Current Date
     Log    Data atual: ${data}  # saída: Data atual: 2024-08-12
     ```

2. **Get Current Date Time**:
   - **Descrição**: Retorna a data e a hora atuais no formato padrão (YYYY-MM-DD HH:MM:SS).
   - **Exemplo**:
     ```robot
     ${data_hora}=    Get Current Date Time
     Log    Data e hora atuais: ${data_hora}  # saída: Data e hora atuais: 2024-08-12 14:30:00
     ```

3. **Get Time**:
   - **Descrição**: Retorna o horário atual no formato padrão (HH:MM:SS).
   - **Exemplo**:
     ```robot
     ${hora}=    Get Time
     Log    Hora atual: ${hora}  # saída: Hora atual: 14:30:00
     ```

4. **Add Time To Date**:
   - **Descrição**: Adiciona ou subtrai uma quantidade específica de tempo (dias, horas, minutos, etc.) a uma data.
   - **Exemplo**:
     ```robot
     ${nova_data}=    Add Time To Date    2024-08-12    5d
     Log    Nova data: ${nova_data}  # saída: Nova data: 2024-08-17
     ```

5. **Subtract Time From Date**:
   - **Descrição**: Subtrai uma quantidade específica de tempo (dias, horas, minutos, etc.) de uma data.
   - **Exemplo**:
     ```robot
     ${nova_data}=    Subtract Time From Date    2024-08-12    3d
     Log    Nova data: ${nova_data}  # saída: Nova data: 2024-08-09
     ```

6. **Subtract Dates**:
   - **Descrição**: Calcula a diferença entre duas datas em dias, horas, minutos ou segundos.
   - **Exemplo**:
     ```robot
     ${diferenca}=    Subtract Dates    2024-08-12    2024-08-01
     Log    Diferença em dias: ${diferenca}  # saída: Diferença em dias: 11
     ```

7. **Convert Date**:
   - **Descrição**: Converte uma data para um formato específico.
   - **Exemplo**:
     ```robot
     ${nova_data}=    Convert Date    2024-08-12    %d/%m/%Y
     Log    Data formatada: ${nova_data}  # saída: Data formatada: 12/08/2024
     ```

8. **Convert Time**:
   - **Descrição**: Converte um horário para um formato específico.
   - **Exemplo**:
     ```robot
     ${novo_tempo}=    Convert Time    14:30:00    %I:%M %p
     Log    Horário formatado: ${novo_tempo}  # saída: Horário formatado: 02:30 PM
     ```

9. **Get Weekday**:
   - **Descrição**: Retorna o dia da semana correspondente a uma data (por exemplo, Monday, Tuesday, etc.).
   - **Exemplo**:
     ```robot
     ${dia_da_semana}=    Get Weekday    2024-08-12
     Log    Dia da semana: ${dia_da_semana}  # saída: Dia da semana: Monday
     ```

10. **Get Last Day Of Month**:
    - **Descrição**: Retorna a data do último dia do mês de uma data específica.
    - **Exemplo**:
      ```robot
      ${ultimo_dia}=    Get Last Day Of Month    2024-08-12
      Log    Último dia do mês: ${ultimo_dia}  # saída: Último dia do mês: 2024-08-31
      ```

11. **Parse Date**:
    - **Descrição**: Converte uma string que representa uma data em um objeto de data usando um formato específico.
    - **Exemplo**:
      ```robot
      ${data}=    Parse Date    12/08/2024    %d/%m/%Y
      Log    Data: ${data}  # saída: Data: 2024-08-12
      ```

12. **Parse Time**:
    - **Descrição**: Converte uma string que representa um horário em um objeto de tempo usando um formato específico.
    - **Exemplo**:
      ```robot
      ${hora}=    Parse Time    02:30 PM    %I:%M %p
      Log    Hora: ${hora}  # saída: Hora: 14:30:00
      ```

13. **Set Date**:
    - **Descrição**: Define uma nova data ajustando partes específicas da data existente (ano, mês, dia, etc.).
    - **Exemplo**:
      ```robot
      ${nova_data}=    Set Date    2024-08-12    year=2025
      Log    Nova data: ${nova_data

}  # saída: Nova data: 2025-08-12
      ```

14. **Time Should Be Later Than**:
    - **Descrição**: Verifica se um horário é posterior a outro horário especificado.
    - **Exemplo**:
      ```robot
      Time Should Be Later Than    14:30:00    14:00:00
      ```

15. **Time Should Be Earlier Than**:
    - **Descrição**: Verifica se um horário é anterior a outro horário especificado.
    - **Exemplo**:
      ```robot
      Time Should Be Earlier Than    14:00:00    14:30:00
      ```

16. **Time Should Be Between**:
    - **Descrição**: Verifica se um horário está entre dois outros horários especificados.
    - **Exemplo**:
      ```robot
      Time Should Be Between    14:30:00    14:00:00    15:00:00
      ```

17. **Add Time To Time**:
    - **Descrição**: Adiciona uma quantidade específica de tempo (horas, minutos, segundos) a um horário.
    - **Exemplo**:
      ```robot
      ${novo_horario}=    Add Time To Time    14:30:00    1h 30m
      Log    Novo horário: ${novo_horario}  # saída: Novo horário: 16:00:00
      ```

18. **Subtract Time From Time**:
    - **Descrição**: Subtrai uma quantidade específica de tempo (horas, minutos, segundos) de um horário.
    - **Exemplo**:
      ```robot
      ${novo_horario}=    Subtract Time From Time    14:30:00    1h
      Log    Novo horário: ${novo_horario}  # saída: Novo horário: 13:30:00
      ```

19. **Convert Time To Seconds**:
    - **Descrição**: Converte um horário no formato HH:MM:SS para o total de segundos.
    - **Exemplo**:
      ```robot
      ${segundos}=    Convert Time To Seconds    01:01:01
      Log    Total de segundos: ${segundos}  # saída: Total de segundos: 3661
      ```

20. **Convert Seconds To Time**:
    - **Descrição**: Converte um valor em segundos para o formato de horário HH:MM:SS.
    - **Exemplo**:
      ```robot
      ${hora}=    Convert Seconds To Time    3661
      Log    Hora: ${hora}  # saída: Hora: 01:01:01
      ```

### Conclusão

A `DateTime` library no Robot Framework é uma ferramenta poderosa para manipulação e verificação de datas e horários. Ela oferece uma ampla gama de funcionalidades que facilitam o trabalho com datas e horários em seus testes automatizados, desde operações básicas como obter a data atual até cálculos complexos de tempo. Conhecer esses métodos permite que você gerencie datas e horários com precisão e flexibilidade em seus projetos de automação.