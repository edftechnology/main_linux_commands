# Boas práticas para scripts de shell

## Resumo

Scripts confiáveis tornam explícitos seus argumentos, erros e efeitos. Um cabeçalho com `set -euo pipefail` pode revelar falhas cedo, mas exige atenção a pipelines e comandos que retornam status não zero legitimamente.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 6 do módulo 7 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Boas práticas para scripts de shell no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Use funções pequenas, aspas, nomes claros, `mktemp` e `trap` para temporários; valide entradas; envie erros a stderr; use códigos de saída consistentes. Teste `bash -n` e ShellCheck; documente dependências e operações destrutivas.

### Ideia central

Scripts confiáveis tornam explícitos seus argumentos, erros e efeitos. Um cabeçalho com `set -euo pipefail` pode revelar falhas cedo, mas exige atenção a pipelines e comandos que retornam status não zero legitimamente.


## Exemplo 1: best practices for shell scripting

O exemplo está salvo em `scripts/examples/1_best_practices_for_shell_scripting_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
cleanup() { [[ -n ${temp_dir:-} && -d $temp_dir ]] && rm -rf -- "$temp_dir"; }
trap cleanup EXIT
temp_dir=$(mktemp -d)
input=${1:-sample}
printf 'Entrada validada: %s\n' "$input"
printf '%s\n' "$input" > "$temp_dir/result.txt"
cat "$temp_dir/result.txt"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_best_practices_for_shell_scripting_example.sh
```

### Exemplo 2: use a trap for temporary cleanup

Arquivo: `scripts/examples/2_best_practices_for_shell_scripting_use_a_trap_for_temporary_cleanup.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'temporary data\n' > "$temp_root/data"; test -s "$temp_root/data"; printf 'Temporary workspace will be cleaned on exit.\n'
```

Execute com `bash scripts/examples/2_best_practices_for_shell_scripting_use_a_trap_for_temporary_cleanup.sh`.

### Exemplo 3: use a trap for temporary cleanup validate result

Arquivo: `scripts/examples/3_best_practices_for_shell_scripting_use_a_trap_for_temporary_cleanup_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'temporary data\n' > "$temp_root/data"; test -s "$temp_root/data"; printf 'Temporary workspace will be cleaned on exit.\n'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_best_practices_for_shell_scripting_use_a_trap_for_temporary_cleanup_validate_result.sh`.

## Atividade 1: tarefa principal: best practices for shell scripting

Escreva um script com função, validação de argumento, diretório temporário, `trap` e erro claro para entrada inválida.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_best_practices_for_shell_scripting_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
cleanup() { [[ -n ${temp_dir:-} && -d $temp_dir ]] && rm -rf -- "$temp_dir"; }
trap cleanup EXIT
if (( $# > 1 )); then printf 'Uso: %s [texto]\n' "$0" >&2; exit 2; fi
show_text() { printf 'Resultado: %s\n' "$1"; }
temp_dir=$(mktemp -d)
value=${1:-exemplo}
printf '%s\n' "$value" > "$temp_dir/value.txt"
show_text "$(cat "$temp_dir/value.txt")"
```

Execute com:

```bash
bash scripts/activity_solution/1_best_practices_for_shell_scripting_activity_solution.sh
```

### Atividade 2: use a trap for temporary cleanup

Adicione uma variação ao script com entrada opcional e saída previsível.

Solução de referência: `scripts/activity_solution/2_best_practices_for_shell_scripting_activity_use_a_trap_for_temporary_cleanup.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'temporary data\n' > "$temp_root/data"; test -s "$temp_root/data"; printf 'Temporary workspace will be cleaned on exit.\n'
```

Execute com `bash scripts/activity_solution/2_best_practices_for_shell_scripting_activity_use_a_trap_for_temporary_cleanup.sh`.

### Atividade 3: use a trap for temporary cleanup validate result

Valide uma condição de erro e garanta limpeza de recursos temporários.

Solução de referência: `scripts/activity_solution/3_best_practices_for_shell_scripting_activity_use_a_trap_for_temporary_cleanup_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'temporary data\n' > "$temp_root/data"; test -s "$temp_root/data"; printf 'Temporary workspace will be cleaned on exit.\n'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_best_practices_for_shell_scripting_activity_use_a_trap_for_temporary_cleanup_validate_result.sh`.

## Verificação e cuidados

`set -e` tem exceções e não substitui tratamento de erros explícito; sempre teste caminhos de sucesso e falha.

Para depurar, execute com `bash -x scripts/examples/1_best_practices_for_shell_scripting_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=7&lesson=6>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**Bash reference manual**.
Disponível em: <https://www.gnu.org/software/bash/manual/bash.html>.
Documentação técnica.
Acessado em: 09/10/2026.

