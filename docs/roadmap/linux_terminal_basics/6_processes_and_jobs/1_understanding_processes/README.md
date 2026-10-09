# Entendendo processos

## Resumo

Um processo é uma instância de programa em execução, identificada por PID e associada a usuário, estado, recursos e processo pai (PPID). Um programa pode criar vários processos e threads.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 1 do módulo 6 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Entendendo processos no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Estados comuns incluem execução, espera e zumbi. O escalonador divide CPU entre tarefas; memória virtual e sinais afetam sua execução. `ps`, `/proc` e `top` oferecem perspectivas diferentes.

### Ideia central

Um processo é uma instância de programa em execução, identificada por PID e associada a usuário, estado, recursos e processo pai (PPID). Um programa pode criar vários processos e threads.


## Exemplo 1: understanding processes

O exemplo está salvo em `scripts/examples/1_understanding_processes_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 20 &
pid=$!
printf 'PID iniciado: %s\n' "$pid"
ps -o pid,ppid,stat,comm -p "$pid"
kill "$pid"
wait "$pid" 2>/dev/null || true
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_understanding_processes_example.sh
```

### Exemplo 2: inspect process parent and state

Arquivo: `scripts/examples/2_understanding_processes_inspect_process_parent_and_state.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 5 & process_id=$!; ps -o pid,ppid,stat,comm -p "$process_id"; kill -TERM "$process_id"; wait "$process_id" 2>/dev/null || true
```

Execute com `bash scripts/examples/2_understanding_processes_inspect_process_parent_and_state.sh`.

### Exemplo 3: inspect process parent and state validate result

Arquivo: `scripts/examples/3_understanding_processes_inspect_process_parent_and_state_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 5 & process_id=$!; ps -o pid,ppid,stat,comm -p "$process_id"; kill -TERM "$process_id"; wait "$process_id" 2>/dev/null || true
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_understanding_processes_inspect_process_parent_and_state_validate_result.sh`.

## Atividade 1: tarefa principal: understanding processes

Inicie um processo temporário, identifique PID/PPID/estado e encerre somente esse processo.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_understanding_processes_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 30 &
process_id=$!
ps -o pid,ppid,stat,comm -p "$process_id"
kill -TERM "$process_id"
wait "$process_id" 2>/dev/null || true
```

Execute com:

```bash
bash scripts/activity_solution/1_understanding_processes_activity_solution.sh
```

### Atividade 2: inspect process parent and state

Repita o procedimento com status/identificador capturado pelo próprio script.

Solução de referência: `scripts/activity_solution/2_understanding_processes_activity_inspect_process_parent_and_state.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 5 & process_id=$!; ps -o pid,ppid,stat,comm -p "$process_id"; kill -TERM "$process_id"; wait "$process_id" 2>/dev/null || true
```

Execute com `bash scripts/activity_solution/2_understanding_processes_activity_inspect_process_parent_and_state.sh`.

### Atividade 3: inspect process parent and state validate result

Verifique o término ou resultado final e trate falhas sem afetar processos ou logs alheios.

Solução de referência: `scripts/activity_solution/3_understanding_processes_activity_inspect_process_parent_and_state_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 5 & process_id=$!; ps -o pid,ppid,stat,comm -p "$process_id"; kill -TERM "$process_id"; wait "$process_id" 2>/dev/null || true
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_understanding_processes_activity_inspect_process_parent_and_state_validate_result.sh`.

## Verificação e cuidados

Nunca use PID presumido ou variável não validada para `kill`; capture PID do processo que você iniciou.

Para depurar, execute com `bash -x scripts/examples/1_understanding_processes_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=6&lesson=1>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

