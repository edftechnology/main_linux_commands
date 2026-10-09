# Criando um script de shell simples

## Resumo

Um script reúne comandos em um arquivo executável. O shebang escolhe o interpretador; uma extensão `.sh` é convenção, não requisito. Separe propósito, entradas, processamento e saída.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 1 do módulo 7 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Criando um script de shell simples no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Use `#!/usr/bin/env bash`, permissões `chmod u+x`, caminhos entre aspas e mensagens com `printf`. `bash arquivo.sh` executa sem bit executável; `./arquivo.sh` exige permissão e shebang válido.

### Ideia central

Um script reúne comandos em um arquivo executável. O shebang escolhe o interpretador; uma extensão `.sh` é convenção, não requisito. Separe propósito, entradas, processamento e saída.


## Exemplos

Cada exemplo tem um arquivo independente em `scripts/examples/`. Os exemplos abaixo são complementares e originais; o PDF de referência disponível contém apenas o resumo final e as quatro perguntas, não o corpo integral da aula.


### 1. Criar um script com shebang

Arquivo: `scripts/examples/1_create_script_with_shebang.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
script_file="$temp_root/hello.sh"
cat > "$script_file" <<'SCRIPT'
#!/usr/bin/env bash
printf 'Hello from Bash\n'
SCRIPT
bash "$script_file"
```

Execute com `bash scripts/examples/1_create_script_with_shebang.sh`.

### 2. Documentar o script com comentários

Arquivo: `scripts/examples/2_add_comments_to_script.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

# A comment explains why this step is useful.
printf 'Comments are ignored by the shell.\n'
```

Execute com `bash scripts/examples/2_add_comments_to_script.sh`.

### 3. Conceder permissão de execução e executar

Arquivo: `scripts/examples/3_set_execute_permission_and_run.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
script_file="$temp_root/greet.sh"
cat > "$script_file" <<'SCRIPT'
#!/usr/bin/env bash
set -euo pipefail
printf 'Hello, %s!\n' "${1:-world}"
SCRIPT
chmod u+x "$script_file"
"$script_file" Ada
```

Execute com `bash scripts/examples/3_set_execute_permission_and_run.sh`.

### 4. Comparar execução com Bash e execução direta

Arquivo: `scripts/examples/4_run_script_with_bash_or_path.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
script_file="$temp_root/methods.sh"
printf '#!/usr/bin/env bash\nprintf "Executed by: %%s\\n" "$BASH_VERSION"\n' > "$script_file"
printf 'Interpreter invocation:\n'
bash "$script_file"
chmod u+x "$script_file"
printf 'Direct invocation:\n'
"$script_file"
```

Execute com `bash scripts/examples/4_run_script_with_bash_or_path.sh`.

### 5. Ler entrada e usar variáveis

Arquivo: `scripts/examples/5_read_user_input_and_use_variables.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

name=${1:-}
if [[ -z "$name" ]]; then
  read -r -p 'Your name: ' name
fi
if [[ -z "$name" ]]; then
  printf 'A name is required.\n' >&2
  exit 2
fi
printf 'Welcome, %s!\n' "$name"
```

Execute com `bash scripts/examples/5_read_user_input_and_use_variables.sh`.

## Atividades de revisão

As perguntas abaixo correspondem às quatro questões exibidas na página de revisão do PDF. As soluções explicadas e executáveis estão separadas em `scripts/activity_solution/`.

1. Por que scripts de shell precisam da linha shebang e o que pode acontecer se ela estiver ausente?
2. Como funciona `chmod +x` e o que ocorre se a permissão de execução não for concedida?
3. Quais são as formas de executar um script e quando escolher cada uma?
4. Como tratar erros e quais boas práticas ajudam a tornar scripts mais confiáveis?


### 1. Resposta: shebang e interpretador

Arquivo: `scripts/activity_solution/1_explain_shebang_and_interpreter.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail
printf '%s\n'   'The shebang selects the interpreter for direct execution.'   'Without it, direct execution may fail or use an unintended fallback.'   'Calling bash script.sh explicitly selects Bash regardless of the shebang.'
```

Execute com `bash scripts/activity_solution/1_explain_shebang_and_interpreter.sh`.

### 2. Resposta: permissão de execução

Arquivo: `scripts/activity_solution/2_explain_chmod_execute_permission.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail
printf '%s\n'   'chmod u+x script.sh adds execute permission for the file owner.'   'Without execute permission, ./script.sh is denied; bash script.sh can still read it.'
```

Execute com `bash scripts/activity_solution/2_explain_chmod_execute_permission.sh`.

### 3. Resposta: métodos de execução

Arquivo: `scripts/activity_solution/3_compare_script_execution_methods.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail
printf '%s\n'   'bash script.sh: explicit interpreter; execute bit is not required.'   './script.sh: uses shebang and requires execute permission.'   'source script.sh: runs in the current shell; use only when changing current-shell state is intended.'
```

Execute com `bash scripts/activity_solution/3_compare_script_execution_methods.sh`.

### 4. Resposta: tratamento de erros

Arquivo: `scripts/activity_solution/4_demonstrate_error_handling_practices.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

require_file() {
  local file_path=${1:?Usage: require_file PATH}
  if [[ ! -f "$file_path" ]]; then
    printf 'Error: not a regular file: %s\n' "$file_path" >&2
    return 2
  fi
  printf 'Validated file: %s\n' "$file_path"
}

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'sample\n' > "$temp_root/input.txt"
require_file "$temp_root/input.txt"
```

Execute com `bash scripts/activity_solution/4_demonstrate_error_handling_practices.sh`.

## Verificação e cuidados

Não dependa do diretório atual para localizar arquivos auxiliares; derive caminhos do script quando necessário.

Para depurar, execute com `bash -x scripts/examples/1_creating_a_simple_shell_script_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=7&lesson=1>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**Bash reference manual**.
Disponível em: <https://www.gnu.org/software/bash/manual/bash.html>.
Documentação técnica.
Acessado em: 09/10/2026.

