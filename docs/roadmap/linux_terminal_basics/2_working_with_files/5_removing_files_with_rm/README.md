# Removendo arquivos com `rm`

## Resumo

`rm` remove nomes do sistema de arquivos e normalmente não oferece desfazer. `-r` percorre árvores, `-f` ignora ausências e `-i`/`-I` pedem confirmação.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 5 do módulo 2 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Removendo arquivos com `rm` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Para uso cotidiano, uma lixeira como `gio trash` é mais recuperável. Use caminhos explícitos, `--` antes de nomes e faça uma prévia da seleção de `find` antes de qualquer ação destrutiva.

### Ideia central

`rm` remove nomes do sistema de arquivos e normalmente não oferece desfazer. `-r` percorre árvores, `-f` ignora ausências e `-i`/`-I` pedem confirmação.


## Exemplo 1: removing files with rm

O exemplo está salvo em `scripts/examples/1_removing_files_with_rm_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'temporario\n' > "$temp_root/apagar.txt"
find "$temp_root" -maxdepth 1 -type f -print
rm -- "$temp_root/apagar.txt"
test ! -e "$temp_root/apagar.txt"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_removing_files_with_rm_example.sh
```

### Exemplo 2: remove only a selected temporary file

Arquivo: `scripts/examples/2_removing_files_with_rm_remove_only_a_selected_temporary_file.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; touch "$temp_root/remove.tmp" "$temp_root/keep.txt"; find "$temp_root" -name '*.tmp' -print -delete; test -f "$temp_root/keep.txt"
```

Execute com `bash scripts/examples/2_removing_files_with_rm_remove_only_a_selected_temporary_file.sh`.

### Exemplo 3: remove only a selected temporary file validate result

Arquivo: `scripts/examples/3_removing_files_with_rm_remove_only_a_selected_temporary_file_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; touch "$temp_root/remove.tmp" "$temp_root/keep.txt"; find "$temp_root" -name '*.tmp' -print -delete; test -f "$temp_root/keep.txt"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_removing_files_with_rm_remove_only_a_selected_temporary_file_validate_result.sh`.

## Atividade 1: tarefa principal: removing files with rm

Liste o que será removido em uma árvore temporária, remova somente um arquivo e confirme sua ausência.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_removing_files_with_rm_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir "$temp_root/subdir"
printf x > "$temp_root/alvo.txt"
printf y > "$temp_root/subdir/outro.txt"
find "$temp_root" -type f -print
rm -- "$temp_root/alvo.txt"
test ! -e "$temp_root/alvo.txt"
find "$temp_root" -print
```

Execute com:

```bash
bash scripts/activity_solution/1_removing_files_with_rm_activity_solution.sh
```

### Atividade 2: remove only a selected temporary file

Repita a operação usando uma opção adicional relevante, sem modificar arquivos fora do diretório temporário.

Solução de referência: `scripts/activity_solution/2_removing_files_with_rm_activity_remove_only_a_selected_temporary_file.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; touch "$temp_root/remove.tmp" "$temp_root/keep.txt"; find "$temp_root" -name '*.tmp' -print -delete; test -f "$temp_root/keep.txt"
```

Execute com `bash scripts/activity_solution/2_removing_files_with_rm_activity_remove_only_a_selected_temporary_file.sh`.

### Atividade 3: remove only a selected temporary file validate result

Inclua uma validação antes e depois da operação e confirme que um arquivo não relacionado foi preservado.

Solução de referência: `scripts/activity_solution/3_removing_files_with_rm_activity_remove_only_a_selected_temporary_file_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; touch "$temp_root/remove.tmp" "$temp_root/keep.txt"; find "$temp_root" -name '*.tmp' -print -delete; test -f "$temp_root/keep.txt"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_removing_files_with_rm_activity_remove_only_a_selected_temporary_file_validate_result.sh`.

## Verificação e cuidados

Nunca expanda uma variável possivelmente vazia em `rm -rf "$var"/*`; valide a variável e o diretório antes.

Para depurar, execute com `bash -x scripts/examples/1_removing_files_with_rm_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=2&lesson=5>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

