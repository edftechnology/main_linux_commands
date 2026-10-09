# Movendo e renomeando arquivos com `mv`

## Resumo

`mv origem destino` move ou renomeia uma entrada. No mesmo sistema de arquivos pode ser uma operação de metadados; entre sistemas pode envolver cópia e remoção.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 4 do módulo 2 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Movendo e renomeando arquivos com `mv` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`-i` pergunta antes de sobrescrever, `-n` evita sobrescrita e `-v` mostra operações. Use `--` para nomes começando por hífen. Para renomeações em lote, primeiro gere uma prévia.

### Ideia central

`mv origem destino` move ou renomeia uma entrada. No mesmo sistema de arquivos pode ser uma operação de metadados; entre sistemas pode envolver cópia e remoção.


## Exemplo 1: moving and renaming files with mv

O exemplo está salvo em `scripts/examples/1_moving_and_renaming_files_with_mv_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'rascunho\n' > "$temp_root/rascunho.txt"
mv -v -- "$temp_root/rascunho.txt" "$temp_root/relatorio.txt"
test -f "$temp_root/relatorio.txt"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_moving_and_renaming_files_with_mv_example.sh
```

### Exemplo 2: rename without overwriting

Arquivo: `scripts/examples/2_moving_and_renaming_files_with_mv_rename_without_overwriting.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf old > "$temp_root/old.txt"; mv -n -- "$temp_root/old.txt" "$temp_root/new.txt"; test -f "$temp_root/new.txt"; ls -l "$temp_root"
```

Execute com `bash scripts/examples/2_moving_and_renaming_files_with_mv_rename_without_overwriting.sh`.

### Exemplo 3: rename without overwriting validate result

Arquivo: `scripts/examples/3_moving_and_renaming_files_with_mv_rename_without_overwriting_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf old > "$temp_root/old.txt"; mv -n -- "$temp_root/old.txt" "$temp_root/new.txt"; test -f "$temp_root/new.txt"; ls -l "$temp_root"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_moving_and_renaming_files_with_mv_rename_without_overwriting_validate_result.sh`.

## Atividade 1: tarefa principal: moving and renaming files with mv

Crie três arquivos numerados e mova-os para `arquivados/`, recusando destinos já existentes.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_moving_and_renaming_files_with_mv_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir "$temp_root/arquivados"
for number in 1 2 3; do printf '%s\n' "$number" > "$temp_root/file_$number.txt"; done
for file_path in "$temp_root"/file_*.txt; do
  target="$temp_root/arquivados/${file_path##*/}"
  test ! -e "$target" || { printf 'Destino já existe\n' >&2; exit 1; }
  mv -- "$file_path" "$target"
done
ls -1 "$temp_root/arquivados"
```

Execute com:

```bash
bash scripts/activity_solution/1_moving_and_renaming_files_with_mv_activity_solution.sh
```

### Atividade 2: rename without overwriting

Repita a operação usando uma opção adicional relevante, sem modificar arquivos fora do diretório temporário.

Solução de referência: `scripts/activity_solution/2_moving_and_renaming_files_with_mv_activity_rename_without_overwriting.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf old > "$temp_root/old.txt"; mv -n -- "$temp_root/old.txt" "$temp_root/new.txt"; test -f "$temp_root/new.txt"; ls -l "$temp_root"
```

Execute com `bash scripts/activity_solution/2_moving_and_renaming_files_with_mv_activity_rename_without_overwriting.sh`.

### Atividade 3: rename without overwriting validate result

Inclua uma validação antes e depois da operação e confirme que um arquivo não relacionado foi preservado.

Solução de referência: `scripts/activity_solution/3_moving_and_renaming_files_with_mv_activity_rename_without_overwriting_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf old > "$temp_root/old.txt"; mv -n -- "$temp_root/old.txt" "$temp_root/new.txt"; test -f "$temp_root/new.txt"; ls -l "$temp_root"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_moving_and_renaming_files_with_mv_activity_rename_without_overwriting_validate_result.sh`.

## Verificação e cuidados

Valide destinos antes de mover; distinguir um diretório existente de um novo nome evita resultados inesperados.

Para depurar, execute com `bash -x scripts/examples/1_moving_and_renaming_files_with_mv_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=2&lesson=4>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

