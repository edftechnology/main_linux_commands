# Listando processos com `ps`

## Resumo

`ps` mostra um retrato dos processos em um instante. `ps -ef` usa formato completo estilo Unix; `ps aux` usa formato BSD; filtros por PID, usuário e colunas ajudam a reduzir a saída.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 2 do módulo 6 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Listando processos com `ps` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`-o` seleciona campos como PID, PPID, estado, CPU e comando. `--sort=-%cpu` ordena por uso; `pgrep -a nome` pesquisa processos. O formato e opções podem variar entre implementações.

### Ideia central

`ps` mostra um retrato dos processos em um instante. `ps -ef` usa formato completo estilo Unix; `ps aux` usa formato BSD; filtros por PID, usuário e colunas ajudam a reduzir a saída.


## Exemplo 1: listing running processes with ps

O exemplo está salvo em `scripts/examples/1_listing_running_processes_with_ps_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

ps -eo pid,ppid,user,stat,%cpu,%mem,comm --sort=-%cpu | head -n 12
printf '\nProcessos do usuário atual: \n'
ps -u "$(id -un)" -o pid,stat,comm | head -n 12
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_listing_running_processes_with_ps_example.sh
```

### Exemplo 2: filter process list by current user

Arquivo: `scripts/examples/2_listing_running_processes_with_ps_filter_process_list_by_current_user.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

ps -u "$(id -un)" -o pid,stat,comm | sed -n '1,15p'
```

Execute com `bash scripts/examples/2_listing_running_processes_with_ps_filter_process_list_by_current_user.sh`.

### Exemplo 3: filter process list by current user validate result

Arquivo: `scripts/examples/3_listing_running_processes_with_ps_filter_process_list_by_current_user_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

ps -u "$(id -un)" -o pid,stat,comm | sed -n '1,15p'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_listing_running_processes_with_ps_filter_process_list_by_current_user_validate_result.sh`.

## Atividade 1: tarefa principal: listing running processes with ps

Liste os cinco processos de maior CPU e mostre PID, usuário, estado e comando.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_listing_running_processes_with_ps_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

ps -eo pid,user,stat,%cpu,comm --sort=-%cpu | head -n 6
```

Execute com:

```bash
bash scripts/activity_solution/1_listing_running_processes_with_ps_activity_solution.sh
```

### Atividade 2: filter process list by current user

Repita o procedimento com status/identificador capturado pelo próprio script.

Solução de referência: `scripts/activity_solution/2_listing_running_processes_with_ps_activity_filter_process_list_by_current_user.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

ps -u "$(id -un)" -o pid,stat,comm | sed -n '1,15p'
```

Execute com `bash scripts/activity_solution/2_listing_running_processes_with_ps_activity_filter_process_list_by_current_user.sh`.

### Atividade 3: filter process list by current user validate result

Verifique o término ou resultado final e trate falhas sem afetar processos ou logs alheios.

Solução de referência: `scripts/activity_solution/3_listing_running_processes_with_ps_activity_filter_process_list_by_current_user_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

ps -u "$(id -un)" -o pid,stat,comm | sed -n '1,15p'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_listing_running_processes_with_ps_activity_filter_process_list_by_current_user_validate_result.sh`.

## Verificação e cuidados

A saída é um retrato, não monitoramento contínuo; evite inferir comportamento futuro de uma única amostra.

Para depurar, execute com `bash -x scripts/examples/1_listing_running_processes_with_ps_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=6&lesson=2>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

