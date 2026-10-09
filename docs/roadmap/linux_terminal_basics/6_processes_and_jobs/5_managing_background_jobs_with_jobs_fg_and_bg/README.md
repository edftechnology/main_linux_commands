# Gerenciando jobs com `jobs`, `fg` e `bg`

## Resumo

`jobs` lista tarefas iniciadas pelo shell atual; `fg` traz um job ao primeiro plano e `bg` retoma um job suspenso em background. Essas operações são recursos do shell interativo.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 5 do módulo 6 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Gerenciando jobs com `jobs`, `fg` e `bg` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`Ctrl+Z` suspende o job em primeiro plano; `bg %1` o continua em segundo plano e `fg %1` o retoma no terminal. `disown` altera associação com o shell em Bash, mas não é um gerenciador de serviços.

### Ideia central

`jobs` lista tarefas iniciadas pelo shell atual; `fg` traz um job ao primeiro plano e `bg` retoma um job suspenso em background. Essas operações são recursos do shell interativo.


## Exemplo 1: managing background jobs with jobs fg and bg

O exemplo está salvo em `scripts/examples/1_managing_background_jobs_with_jobs_fg_and_bg_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'Em terminal interativo: sleep 60
'
printf 'Ctrl+Z suspende; depois use jobs, bg %%1 e fg %%1.
'
sleep 1 &
job_pid=$!
jobs -l
wait "$job_pid"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_managing_background_jobs_with_jobs_fg_and_bg_example.sh
```

### Exemplo 2: list jobs in current shell

Arquivo: `scripts/examples/2_managing_background_jobs_with_jobs_fg_and_bg_list_jobs_in_current_shell.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 1 & job_pid=$!; jobs -l; wait "$job_pid"
```

Execute com `bash scripts/examples/2_managing_background_jobs_with_jobs_fg_and_bg_list_jobs_in_current_shell.sh`.

### Exemplo 3: list jobs in current shell validate result

Arquivo: `scripts/examples/3_managing_background_jobs_with_jobs_fg_and_bg_list_jobs_in_current_shell_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 1 & job_pid=$!; jobs -l; wait "$job_pid"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_managing_background_jobs_with_jobs_fg_and_bg_list_jobs_in_current_shell_validate_result.sh`.

## Atividade 1: tarefa principal: managing background jobs with jobs fg and bg

Pratique em um terminal interativo suspender `sleep 60`, listar jobs, retomá-lo com `bg` e trazê-lo com `fg`; documente os comandos sem deixar processo ativo.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_managing_background_jobs_with_jobs_fg_and_bg_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf '%s\n' 'Sequência interativa:' 'sleep 60' 'Ctrl+Z' 'jobs -l' 'bg %1' 'jobs -l' 'fg %1' 'Ctrl+C'
```

Execute com:

```bash
bash scripts/activity_solution/1_managing_background_jobs_with_jobs_fg_and_bg_activity_solution.sh
```

### Atividade 2: list jobs in current shell

Repita o procedimento com status/identificador capturado pelo próprio script.

Solução de referência: `scripts/activity_solution/2_managing_background_jobs_with_jobs_fg_and_bg_activity_list_jobs_in_current_shell.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 1 & job_pid=$!; jobs -l; wait "$job_pid"
```

Execute com `bash scripts/activity_solution/2_managing_background_jobs_with_jobs_fg_and_bg_activity_list_jobs_in_current_shell.sh`.

### Atividade 3: list jobs in current shell validate result

Verifique o término ou resultado final e trate falhas sem afetar processos ou logs alheios.

Solução de referência: `scripts/activity_solution/3_managing_background_jobs_with_jobs_fg_and_bg_activity_list_jobs_in_current_shell_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 1 & job_pid=$!; jobs -l; wait "$job_pid"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_managing_background_jobs_with_jobs_fg_and_bg_activity_list_jobs_in_current_shell_validate_result.sh`.

## Verificação e cuidados

`jobs` de um script não reflete necessariamente o controle de jobs do terminal pai; a atividade deve ser feita em sessão interativa.

Para depurar, execute com `bash -x scripts/examples/1_managing_background_jobs_with_jobs_fg_and_bg_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=6&lesson=5>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

