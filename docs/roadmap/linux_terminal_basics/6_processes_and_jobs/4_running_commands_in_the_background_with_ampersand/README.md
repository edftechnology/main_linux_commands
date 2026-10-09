# Executando comandos em segundo plano com `&`

## Resumo

O operador `&` inicia um comando em segundo plano e devolve o prompt. O shell registra um job; `$!` contém o PID do processo iniciado mais recentemente em background.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 4 do módulo 6 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Executando comandos em segundo plano com `&` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Saída pode continuar aparecendo no terminal; redirecione stdout/stderr quando apropriado. `wait PID` aguarda término e coleta status. Para tarefas duradouras, considere `nohup`, `systemd-run` ou um serviço, em vez de depender do terminal.

### Ideia central

O operador `&` inicia um comando em segundo plano e devolve o prompt. O shell registra um job; `$!` contém o PID do processo iniciado mais recentemente em background.


## Exemplo 1: running commands in the background with ampersand

O exemplo está salvo em `scripts/examples/1_running_commands_in_the_background_with_ampersand_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

sleep 2 &
process_id=$!
printf 'PID em background: %s\n' "$process_id"
wait "$process_id"
printf 'Terminou.\n'
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_running_commands_in_the_background_with_ampersand_example.sh
```

### Exemplo 2: capture background exit status

Arquivo: `scripts/examples/2_running_commands_in_the_background_with_ampersand_capture_background_exit_status.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

(sleep 0.2; exit 7) & process_id=$!; if wait "$process_id"; then status=0; else status=$?; fi; printf 'PID=%s status=%s\n' "$process_id" "$status"
```

Execute com `bash scripts/examples/2_running_commands_in_the_background_with_ampersand_capture_background_exit_status.sh`.

### Exemplo 3: capture background exit status validate result

Arquivo: `scripts/examples/3_running_commands_in_the_background_with_ampersand_capture_background_exit_status_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

(sleep 0.2; exit 7) & process_id=$!; if wait "$process_id"; then status=0; else status=$?; fi; printf 'PID=%s status=%s\n' "$process_id" "$status"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_running_commands_in_the_background_with_ampersand_capture_background_exit_status_validate_result.sh`.

## Atividade 1: tarefa principal: running commands in the background with ampersand

Execute uma tarefa curta em background, registre `$!`, espere com `wait` e informe o status final.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_running_commands_in_the_background_with_ampersand_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
(sleep 1; printf 'tarefa concluída\n') > "$temp_root/background.log" 2>&1 &
process_id=$!
wait "$process_id"
status=$?
printf 'PID=%s status=%s\n' "$process_id" "$status"
cat "$temp_root/background.log"
```

Execute com:

```bash
bash scripts/activity_solution/1_running_commands_in_the_background_with_ampersand_activity_solution.sh
```

### Atividade 2: capture background exit status

Repita o procedimento com status/identificador capturado pelo próprio script.

Solução de referência: `scripts/activity_solution/2_running_commands_in_the_background_with_ampersand_activity_capture_background_exit_status.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

(sleep 0.2; exit 7) & process_id=$!; if wait "$process_id"; then status=0; else status=$?; fi; printf 'PID=%s status=%s\n' "$process_id" "$status"
```

Execute com `bash scripts/activity_solution/2_running_commands_in_the_background_with_ampersand_activity_capture_background_exit_status.sh`.

### Atividade 3: capture background exit status validate result

Verifique o término ou resultado final e trate falhas sem afetar processos ou logs alheios.

Solução de referência: `scripts/activity_solution/3_running_commands_in_the_background_with_ampersand_activity_capture_background_exit_status_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

(sleep 0.2; exit 7) & process_id=$!; if wait "$process_id"; then status=0; else status=$?; fi; printf 'PID=%s status=%s\n' "$process_id" "$status"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_running_commands_in_the_background_with_ampersand_activity_capture_background_exit_status_validate_result.sh`.

## Verificação e cuidados

Um processo em background pode receber `SIGHUP` quando o terminal fecha; escolha a ferramenta conforme a duração.

Para depurar, execute com `bash -x scripts/examples/1_running_commands_in_the_background_with_ampersand_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=6&lesson=4>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

