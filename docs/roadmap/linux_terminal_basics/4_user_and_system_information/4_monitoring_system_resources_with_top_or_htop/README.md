# Monitorando recursos com `top` ou `htop`

## Resumo

`top` e `htop` atualizam métricas e processos continuamente. CPU, memória, carga e estado ajudam a investigar lentidão, mas uma amostra isolada não determina a causa.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 4 do módulo 4 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Monitorando recursos com `top` ou `htop` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`top -b -n 1` fornece uma amostra não interativa; `-o %CPU` ordena por CPU. `htop` é opcional e pode não estar instalado. Combine observação com PID, usuário e argumentos.

### Ideia central

`top` e `htop` atualizam métricas e processos continuamente. CPU, memória, carga e estado ajudam a investigar lentidão, mas uma amostra isolada não determina a causa.


## Exemplo 1: monitoring system resources with top or htop

O exemplo está salvo em `scripts/examples/1_monitoring_system_resources_with_top_or_htop_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

if command -v top >/dev/null 2>&1; then
  top -b -n 1 -o %CPU | head -n 12
else
  printf 'Instale top pela distribuição.\n' >&2
fi
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_monitoring_system_resources_with_top_or_htop_example.sh
```

### Exemplo 2: take a process snapshot

Arquivo: `scripts/examples/2_monitoring_system_resources_with_top_or_htop_take_a_process_snapshot.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

ps -eo pid,ppid,stat,%cpu,%mem,comm --sort=-%cpu | sed -n '1,12p'
```

Execute com `bash scripts/examples/2_monitoring_system_resources_with_top_or_htop_take_a_process_snapshot.sh`.

### Exemplo 3: take a process snapshot validate result

Arquivo: `scripts/examples/3_monitoring_system_resources_with_top_or_htop_take_a_process_snapshot_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

ps -eo pid,ppid,stat,%cpu,%mem,comm --sort=-%cpu | sed -n '1,12p'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_monitoring_system_resources_with_top_or_htop_take_a_process_snapshot_validate_result.sh`.

## Atividade 1: tarefa principal: monitoring system resources with top or htop

Capture uma amostra e liste os cinco processos de maior uso de CPU sem encerrá-los.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_monitoring_system_resources_with_top_or_htop_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

top -b -n 1 -o %CPU | head -n 12
printf '\nResumo com ps:\n'
ps -eo pid,user,comm,%cpu,%mem --sort=-%cpu | head -n 6
```

Execute com:

```bash
bash scripts/activity_solution/1_monitoring_system_resources_with_top_or_htop_activity_solution.sh
```

### Atividade 2: take a process snapshot

Colete uma segunda informação relacionada e rotule cada campo na saída.

Solução de referência: `scripts/activity_solution/2_monitoring_system_resources_with_top_or_htop_activity_take_a_process_snapshot.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

ps -eo pid,ppid,stat,%cpu,%mem,comm --sort=-%cpu | sed -n '1,12p'
```

Execute com `bash scripts/activity_solution/2_monitoring_system_resources_with_top_or_htop_activity_take_a_process_snapshot.sh`.

### Atividade 3: take a process snapshot validate result

Limite a consulta ao escopo solicitado e trate a ausência de dados ou permissão.

Solução de referência: `scripts/activity_solution/3_monitoring_system_resources_with_top_or_htop_activity_take_a_process_snapshot_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

ps -eo pid,ppid,stat,%cpu,%mem,comm --sort=-%cpu | sed -n '1,12p'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_monitoring_system_resources_with_top_or_htop_activity_take_a_process_snapshot_validate_result.sh`.

## Verificação e cuidados

Não encerre um processo só porque aparece no topo; identifique sua função e o impacto primeiro.

Para depurar, execute com `bash -x scripts/examples/1_monitoring_system_resources_with_top_or_htop_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=4&lesson=4>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

