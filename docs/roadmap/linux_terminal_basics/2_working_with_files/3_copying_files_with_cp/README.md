# Copiando arquivos com `cp`

## Resumo

`cp origem destino` copia arquivos; `cp -r` copia diretórios. `-a` preserva atributos e estrutura; `-i` pergunta antes de sobrescrever e `-n` evita sobrescrita.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 3 do módulo 2 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Copiando arquivos com `cp` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Confira se o destino já existe e se é arquivo ou diretório. `cp -a origem/. destino/` inclui também entradas ocultas. Um alias interativo pode alterar o comportamento no terminal; scripts devem declarar claramente a política de sobrescrita.

### Ideia central

`cp origem destino` copia arquivos; `cp -r` copia diretórios. `-a` preserva atributos e estrutura; `-i` pergunta antes de sobrescrever e `-n` evita sobrescrita.


## Exemplo 1: copying files with cp

O exemplo está salvo em `scripts/examples/1_copying_files_with_cp_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir "$temp_root/origem"
printf 'texto\n' > "$temp_root/origem/dados.txt"
cp -a -- "$temp_root/origem" "$temp_root/copia"
cmp "$temp_root/origem/dados.txt" "$temp_root/copia/dados.txt"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_copying_files_with_cp_example.sh
```

### Exemplo 2: copy hidden and visible files

Arquivo: `scripts/examples/2_copying_files_with_cp_copy_hidden_and_visible_files.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir "$temp_root/src" "$temp_root/dest"; printf x > "$temp_root/src/a"; printf y > "$temp_root/src/.b"; cp -a "$temp_root/src/." "$temp_root/dest/"; ls -la "$temp_root/dest"
```

Execute com `bash scripts/examples/2_copying_files_with_cp_copy_hidden_and_visible_files.sh`.

### Exemplo 3: copy hidden and visible files validate result

Arquivo: `scripts/examples/3_copying_files_with_cp_copy_hidden_and_visible_files_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir "$temp_root/src" "$temp_root/dest"; printf x > "$temp_root/src/a"; printf y > "$temp_root/src/.b"; cp -a "$temp_root/src/." "$temp_root/dest/"; ls -la "$temp_root/dest"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_copying_files_with_cp_copy_hidden_and_visible_files_validate_result.sh`.

## Atividade 1: tarefa principal: copying files with cp

Copie uma pasta com dois arquivos e compare as cópias, mantendo a pasta original intacta.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_copying_files_with_cp_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir "$temp_root/source"
printf A > "$temp_root/source/a.txt"
printf B > "$temp_root/source/b.txt"
cp -a -- "$temp_root/source" "$temp_root/backup"
cmp "$temp_root/source/a.txt" "$temp_root/backup/a.txt"
cmp "$temp_root/source/b.txt" "$temp_root/backup/b.txt"
```

Execute com:

```bash
bash scripts/activity_solution/1_copying_files_with_cp_activity_solution.sh
```

### Atividade 2: copy hidden and visible files

Repita a operação usando uma opção adicional relevante, sem modificar arquivos fora do diretório temporário.

Solução de referência: `scripts/activity_solution/2_copying_files_with_cp_activity_copy_hidden_and_visible_files.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir "$temp_root/src" "$temp_root/dest"; printf x > "$temp_root/src/a"; printf y > "$temp_root/src/.b"; cp -a "$temp_root/src/." "$temp_root/dest/"; ls -la "$temp_root/dest"
```

Execute com `bash scripts/activity_solution/2_copying_files_with_cp_activity_copy_hidden_and_visible_files.sh`.

### Atividade 3: copy hidden and visible files validate result

Inclua uma validação antes e depois da operação e confirme que um arquivo não relacionado foi preservado.

Solução de referência: `scripts/activity_solution/3_copying_files_with_cp_activity_copy_hidden_and_visible_files_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir "$temp_root/src" "$temp_root/dest"; printf x > "$temp_root/src/a"; printf y > "$temp_root/src/.b"; cp -a "$temp_root/src/." "$temp_root/dest/"; ls -la "$temp_root/dest"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_copying_files_with_cp_activity_copy_hidden_and_visible_files_validate_result.sh`.

## Verificação e cuidados

`cp origem/* destino` omite arquivos ocultos; prefira `cp -a origem/. destino/` quando quiser todo o conteúdo.

Para depurar, execute com `bash -x scripts/examples/1_copying_files_with_cp_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=2&lesson=3>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

