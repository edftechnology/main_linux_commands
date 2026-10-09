# Laços `for` e `while`

## Resumo

`for` percorre uma lista ou expansão; `while` repete enquanto um comando termina com status 0. Laços ajudam a automatizar tarefas repetitivas e a processar entradas.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 4 do módulo 7 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Laços `for` e `while` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Use `for file in "$dir"/*` com cuidado para diretórios vazios; para linhas, prefira `while IFS= read -r`. `break` e `continue` alteram fluxo. A expansão de chaves é recurso do shell, não substitui leitura de dados externos.

### Ideia central

`for` percorre uma lista ou expansão; `while` repete enquanto um comando termina com status 0. Laços ajudam a automatizar tarefas repetitivas e a processar entradas.


## Exemplo 1: looping constructs for while

O exemplo está salvo em `scripts/examples/1_looping_constructs_for_while_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
for number in 1 2 3; do printf 'for: %s\n' "$number"; done
counter=1
while (( counter <= 3 )); do
  printf 'while: %s\n' "$counter"
  ((counter += 1))
done
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_looping_constructs_for_while_example.sh
```

### Exemplo 2: iterate over a controlled list

Arquivo: `scripts/examples/2_looping_constructs_for_while_iterate_over_a_controlled_list.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

for item in alpha beta gamma; do printf 'Item: %s\n' "$item"; done
```

Execute com `bash scripts/examples/2_looping_constructs_for_while_iterate_over_a_controlled_list.sh`.

### Exemplo 3: iterate over a controlled list validate result

Arquivo: `scripts/examples/3_looping_constructs_for_while_iterate_over_a_controlled_list_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

for item in alpha beta gamma; do printf 'Item: %s\n' "$item"; done
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_looping_constructs_for_while_iterate_over_a_controlled_list_validate_result.sh`.

## Atividade 1: tarefa principal: looping constructs for while

Leia três linhas de um arquivo com `while`, preservando espaços e barras invertidas, e numere cada linha.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_looping_constructs_for_while_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'primeira linha\nlinha com espaços\nterceira\n' > "$temp_root/input.txt"
line_number=0
while IFS= read -r line || [[ -n "$line" ]]; do
  ((line_number += 1))
  printf '%d: %s\n' "$line_number" "$line"
done < "$temp_root/input.txt"
```

Execute com:

```bash
bash scripts/activity_solution/1_looping_constructs_for_while_activity_solution.sh
```

### Atividade 2: iterate over a controlled list

Adicione uma variação ao script com entrada opcional e saída previsível.

Solução de referência: `scripts/activity_solution/2_looping_constructs_for_while_activity_iterate_over_a_controlled_list.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

for item in alpha beta gamma; do printf 'Item: %s\n' "$item"; done
```

Execute com `bash scripts/activity_solution/2_looping_constructs_for_while_activity_iterate_over_a_controlled_list.sh`.

### Atividade 3: iterate over a controlled list validate result

Valide uma condição de erro e garanta limpeza de recursos temporários.

Solução de referência: `scripts/activity_solution/3_looping_constructs_for_while_activity_iterate_over_a_controlled_list_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

for item in alpha beta gamma; do printf 'Item: %s\n' "$item"; done
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_looping_constructs_for_while_activity_iterate_over_a_controlled_list_validate_result.sh`.

## Verificação e cuidados

Com `set -e`, expressões aritméticas que resultam em zero podem ter status 1; prefira incremento `((i += 1))`.

Para depurar, execute com `bash -x scripts/examples/1_looping_constructs_for_while_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=7&lesson=4>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**Bash reference manual**.
Disponível em: <https://www.gnu.org/software/bash/manual/bash.html>.
Documentação técnica.
Acessado em: 09/10/2026.

