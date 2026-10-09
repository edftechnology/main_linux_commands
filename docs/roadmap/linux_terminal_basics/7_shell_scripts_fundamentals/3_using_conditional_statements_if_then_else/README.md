# Usando condicionais `if/then/else`

## Resumo

`if` executa comandos conforme o status do teste. Em Bash, `[[ ... ]]` é apropriado para testes de strings, caminhos e padrões; `(( ... ))` avalia aritmética.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 3 do módulo 7 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Usando condicionais `if/then/else` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`-f` testa arquivo regular, `-d` diretório, `-r` leitura; `=` compara strings em `[[ ]]`. Uma condição é verdadeira quando o comando retorna status 0, não quando imprime `true`.

### Ideia central

`if` executa comandos conforme o status do teste. Em Bash, `[[ ... ]]` é apropriado para testes de strings, caminhos e padrões; `(( ... ))` avalia aritmética.


## Exemplo 1: using conditional statements if then else

O exemplo está salvo em `scripts/examples/1_using_conditional_statements_if_then_else_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
file_path=${1:-/etc/os-release}
if [[ -r "$file_path" ]]; then
  printf 'Legível: %s\n' "$file_path"
else
  printf 'Ausente ou sem leitura: %s\n' "$file_path" >&2
fi
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_using_conditional_statements_if_then_else_example.sh
```

### Exemplo 2: branch on file existence

Arquivo: `scripts/examples/2_using_conditional_statements_if_then_else_branch_on_file_existence.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; target="$temp_root/input.txt"; if [[ -e $target ]]; then printf 'Present\n'; else printf 'Missing (expected initially)\n'; fi; : > "$target"; [[ -f $target ]] && printf 'Regular file created\n'
```

Execute com `bash scripts/examples/2_using_conditional_statements_if_then_else_branch_on_file_existence.sh`.

### Exemplo 3: branch on file existence validate result

Arquivo: `scripts/examples/3_using_conditional_statements_if_then_else_branch_on_file_existence_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; target="$temp_root/input.txt"; if [[ -e $target ]]; then printf 'Present\n'; else printf 'Missing (expected initially)\n'; fi; : > "$target"; [[ -f $target ]] && printf 'Regular file created\n'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_using_conditional_statements_if_then_else_branch_on_file_existence_validate_result.sh`.

## Atividade 1: tarefa principal: using conditional statements if then else

Implemente uma verificação que diferencie arquivo regular, diretório e caminho inexistente.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_using_conditional_statements_if_then_else_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
path=${1:-.}
if [[ -f "$path" ]]; then
  printf 'Arquivo regular\n'
elif [[ -d "$path" ]]; then
  printf 'Diretório\n'
else
  printf 'Caminho ausente ou outro tipo\n'
fi
```

Execute com:

```bash
bash scripts/activity_solution/1_using_conditional_statements_if_then_else_activity_solution.sh
```

### Atividade 2: branch on file existence

Adicione uma variação ao script com entrada opcional e saída previsível.

Solução de referência: `scripts/activity_solution/2_using_conditional_statements_if_then_else_activity_branch_on_file_existence.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; target="$temp_root/input.txt"; if [[ -e $target ]]; then printf 'Present\n'; else printf 'Missing (expected initially)\n'; fi; : > "$target"; [[ -f $target ]] && printf 'Regular file created\n'
```

Execute com `bash scripts/activity_solution/2_using_conditional_statements_if_then_else_activity_branch_on_file_existence.sh`.

### Atividade 3: branch on file existence validate result

Valide uma condição de erro e garanta limpeza de recursos temporários.

Solução de referência: `scripts/activity_solution/3_using_conditional_statements_if_then_else_activity_branch_on_file_existence_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; target="$temp_root/input.txt"; if [[ -e $target ]]; then printf 'Present\n'; else printf 'Missing (expected initially)\n'; fi; : > "$target"; [[ -f $target ]] && printf 'Regular file created\n'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_using_conditional_statements_if_then_else_activity_branch_on_file_existence_validate_result.sh`.

## Verificação e cuidados

Valide entradas antes de operações; condições baseadas em strings vazias podem gerar caminhos inesperados.

Para depurar, execute com `bash -x scripts/examples/1_using_conditional_statements_if_then_else_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=7&lesson=3>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**Bash reference manual**.
Disponível em: <https://www.gnu.org/software/bash/manual/bash.html>.
Documentação técnica.
Acessado em: 09/10/2026.

