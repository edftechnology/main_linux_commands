# Monitorando logs com `tail -f` e `journalctl`

## Resumo

Logs registram eventos de programas e do sistema. `tail -f` acompanha um arquivo; `journalctl` consulta o journal do systemd e pode filtrar por unidade, prioridade e intervalo.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 6 do módulo 6 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Monitorando logs com `tail -f` e `journalctl` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`journalctl -u serviço --since today` filtra por unidade e tempo; `--no-pager` é adequado a scripts. Permissões podem limitar consulta. Use `tail -F` para seguir arquivos que são recriados após rotação.

### Ideia central

Logs registram eventos de programas e do sistema. `tail -f` acompanha um arquivo; `journalctl` consulta o journal do systemd e pode filtrar por unidade, prioridade e intervalo.


## Exemplo 1: monitoring system logs with tail f and journalctl

O exemplo está salvo em `scripts/examples/1_monitoring_system_logs_with_tail_f_and_journalctl_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'inicio\n' > "$temp_root/app.log"
printf 'evento\n' >> "$temp_root/app.log"
tail -n 2 "$temp_root/app.log"
journalctl -n 5 --no-pager 2>/dev/null || true
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_monitoring_system_logs_with_tail_f_and_journalctl_example.sh
```

### Exemplo 2: read recent system logs if available

Arquivo: `scripts/examples/2_monitoring_system_logs_with_tail_f_and_journalctl_read_recent_system_logs_if_available.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

if command -v journalctl >/dev/null && journalctl --no-pager -n 3 >/dev/null 2>&1; then journalctl --no-pager -n 3; else printf 'Journal is unavailable or access is restricted.\n'; fi
```

Execute com `bash scripts/examples/2_monitoring_system_logs_with_tail_f_and_journalctl_read_recent_system_logs_if_available.sh`.

### Exemplo 3: read recent system logs if available validate result

Arquivo: `scripts/examples/3_monitoring_system_logs_with_tail_f_and_journalctl_read_recent_system_logs_if_available_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

if command -v journalctl >/dev/null && journalctl --no-pager -n 3 >/dev/null 2>&1; then journalctl --no-pager -n 3; else printf 'Journal is unavailable or access is restricted.\n'; fi
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_monitoring_system_logs_with_tail_f_and_journalctl_read_recent_system_logs_if_available_validate_result.sh`.

## Atividade 1: tarefa principal: monitoring system logs with tail f and journalctl

Mostre as últimas duas linhas de um log temporário e consulte, se permitido, as últimas entradas do journal.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_monitoring_system_logs_with_tail_f_and_journalctl_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
log_file="$temp_root/service.log"
printf 'boot\nready\nwarning: retry\n' > "$log_file"
tail -n 2 "$log_file"
journalctl -n 5 --no-pager 2>/dev/null || printf 'Journal indisponível para este usuário.\n'
```

Execute com:

```bash
bash scripts/activity_solution/1_monitoring_system_logs_with_tail_f_and_journalctl_activity_solution.sh
```

### Atividade 2: read recent system logs if available

Repita o procedimento com status/identificador capturado pelo próprio script.

Solução de referência: `scripts/activity_solution/2_monitoring_system_logs_with_tail_f_and_journalctl_activity_read_recent_system_logs_if_available.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

if command -v journalctl >/dev/null && journalctl --no-pager -n 3 >/dev/null 2>&1; then journalctl --no-pager -n 3; else printf 'Journal is unavailable or access is restricted.\n'; fi
```

Execute com `bash scripts/activity_solution/2_monitoring_system_logs_with_tail_f_and_journalctl_activity_read_recent_system_logs_if_available.sh`.

### Atividade 3: read recent system logs if available validate result

Verifique o término ou resultado final e trate falhas sem afetar processos ou logs alheios.

Solução de referência: `scripts/activity_solution/3_monitoring_system_logs_with_tail_f_and_journalctl_activity_read_recent_system_logs_if_available_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

if command -v journalctl >/dev/null && journalctl --no-pager -n 3 >/dev/null 2>&1; then journalctl --no-pager -n 3; else printf 'Journal is unavailable or access is restricted.\n'; fi
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_monitoring_system_logs_with_tail_f_and_journalctl_activity_read_recent_system_logs_if_available_validate_result.sh`.

## Verificação e cuidados

Logs podem conter dados sensíveis. Restrinja filtros e não publique saídas sem revisar conteúdo.

Para depurar, execute com `bash -x scripts/examples/1_monitoring_system_logs_with_tail_f_and_journalctl_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=6&lesson=6>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

