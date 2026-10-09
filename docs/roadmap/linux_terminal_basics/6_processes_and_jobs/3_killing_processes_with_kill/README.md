# Encerrando processos com `kill`

## Resumo

`kill` envia sinais a um PID. O padrão é `SIGTERM`, que solicita encerramento permitindo limpeza; `SIGKILL` interrompe imediatamente e não pode ser tratado pelo processo.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 3 do módulo 6 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Encerrando processos com `kill` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Tente primeiro `TERM`, aguarde e verifique estado. Use `kill -l` para listar sinais e `kill -0 PID` para testar existência/permissão sem enviar sinal efetivo. `pkill`/`killall` exigem cuidado com seleção por nome.

### Ideia central

`kill` envia sinais a um PID. O padrão é `SIGTERM`, que solicita encerramento permitindo limpeza; `SIGKILL` interrompe imediatamente e não pode ser tratado pelo processo.


## Exemplo 1: killing processes with kill

O exemplo está salvo em `scripts/examples/1_killing_processes_with_kill_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 30 &
process_id=$!
kill -TERM "$process_id"
wait "$process_id" 2>/dev/null || true
printf 'Processo encerrado com solicitação TERM.\n'
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_killing_processes_with_kill_example.sh
```

### Exemplo 2: send term to a process started here

Arquivo: `scripts/examples/2_killing_processes_with_kill_send_term_to_a_process_started_here.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 10 & process_id=$!; kill -TERM "$process_id"; if wait "$process_id" 2>/dev/null; then printf 'Exited normally\n'; else printf 'Exited after signal\n'; fi
```

Execute com `bash scripts/examples/2_killing_processes_with_kill_send_term_to_a_process_started_here.sh`.

### Exemplo 3: send term to a process started here validate result

Arquivo: `scripts/examples/3_killing_processes_with_kill_send_term_to_a_process_started_here_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 10 & process_id=$!; kill -TERM "$process_id"; if wait "$process_id" 2>/dev/null; then printf 'Exited normally\n'; else printf 'Exited after signal\n'; fi
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_killing_processes_with_kill_send_term_to_a_process_started_here_validate_result.sh`.

## Atividade 1: tarefa principal: killing processes with kill

Inicie um `sleep`, envie `TERM` ao PID capturado e confirme que o processo terminou.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_killing_processes_with_kill_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 30 &
process_id=$!
kill -TERM "$process_id"
if wait "$process_id" 2>/dev/null; then printf 'Terminou normalmente.\n'; else printf 'Terminou após receber sinal.\n'; fi
```

Execute com:

```bash
bash scripts/activity_solution/1_killing_processes_with_kill_activity_solution.sh
```

### Atividade 2: send term to a process started here

Repita o procedimento com status/identificador capturado pelo próprio script.

Solução de referência: `scripts/activity_solution/2_killing_processes_with_kill_activity_send_term_to_a_process_started_here.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 10 & process_id=$!; kill -TERM "$process_id"; if wait "$process_id" 2>/dev/null; then printf 'Exited normally\n'; else printf 'Exited after signal\n'; fi
```

Execute com `bash scripts/activity_solution/2_killing_processes_with_kill_activity_send_term_to_a_process_started_here.sh`.

### Atividade 3: send term to a process started here validate result

Verifique o término ou resultado final e trate falhas sem afetar processos ou logs alheios.

Solução de referência: `scripts/activity_solution/3_killing_processes_with_kill_activity_send_term_to_a_process_started_here_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 10 & process_id=$!; kill -TERM "$process_id"; if wait "$process_id" 2>/dev/null; then printf 'Exited normally\n'; else printf 'Exited after signal\n'; fi
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_killing_processes_with_kill_activity_send_term_to_a_process_started_here_validate_result.sh`.

## Verificação e cuidados

Reserve `KILL` para quando sinais cooperativos falharem; ele impede limpeza e pode deixar estado inconsistente.

Para depurar, execute com `bash -x scripts/examples/1_killing_processes_with_kill_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=6&lesson=3>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

