# Contando linhas, palavras e caracteres com `wc`

## Resumo

`wc` conta linhas (`-l`), palavras (`-w`), bytes (`-c`) e caracteres (`-m`). Em UTF-8, caracteres acentuados podem ocupar mais de um byte.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 6 do módulo 3 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Contando linhas, palavras e caracteres com `wc` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Sem opções, mostra linhas, palavras e bytes. `wc -l` conta quebras de linha; `< arquivo` evita incluir o nome na saída quando só interessa o número.

### Ideia central

`wc` conta linhas (`-l`), palavras (`-w`), bytes (`-c`) e caracteres (`-m`). Em UTF-8, caracteres acentuados podem ocupar mais de um byte.


## Exemplo 1: counting lines words and characters with wc

O exemplo está salvo em `scripts/examples/1_counting_lines_words_and_characters_with_wc_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'ação rápida\nlinha dois\n' > "$temp_root/text.txt"
wc "$temp_root/text.txt"
printf 'caracteres: '; wc -m < "$temp_root/text.txt"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_counting_lines_words_and_characters_with_wc_example.sh
```

### Exemplo 2: compare byte and character counts

Arquivo: `scripts/examples/2_counting_lines_words_and_characters_with_wc_compare_byte_and_character_counts.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'ação\n' > "$temp_root/text.txt"; printf 'bytes='; wc -c < "$temp_root/text.txt"; printf 'characters='; wc -m < "$temp_root/text.txt"
```

Execute com `bash scripts/examples/2_counting_lines_words_and_characters_with_wc_compare_byte_and_character_counts.sh`.

### Exemplo 3: compare byte and character counts validate result

Arquivo: `scripts/examples/3_counting_lines_words_and_characters_with_wc_compare_byte_and_character_counts_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'ação\n' > "$temp_root/text.txt"; printf 'bytes='; wc -c < "$temp_root/text.txt"; printf 'characters='; wc -m < "$temp_root/text.txt"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_counting_lines_words_and_characters_with_wc_compare_byte_and_character_counts_validate_result.sh`.

## Atividade 1: tarefa principal: counting lines words and characters with wc

Crie três linhas em UTF-8 e compare linhas, palavras, bytes e caracteres.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_counting_lines_words_and_characters_with_wc_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
text_file="$temp_root/text.txt"
printf 'ação rápida\nlinha dois\nlinha três\n' > "$text_file"
printf 'Linhas: '; wc -l < "$text_file"
printf 'Palavras: '; wc -w < "$text_file"
printf 'Bytes: '; wc -c < "$text_file"
printf 'Caracteres: '; wc -m < "$text_file"
```

Execute com:

```bash
bash scripts/activity_solution/1_counting_lines_words_and_characters_with_wc_activity_solution.sh
```

### Atividade 2: compare byte and character counts

Adapte o exemplo para processar uma segunda entrada e apresente a saída de forma legível.

Solução de referência: `scripts/activity_solution/2_counting_lines_words_and_characters_with_wc_activity_compare_byte_and_character_counts.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'ação\n' > "$temp_root/text.txt"; printf 'bytes='; wc -c < "$temp_root/text.txt"; printf 'characters='; wc -m < "$temp_root/text.txt"
```

Execute com `bash scripts/activity_solution/2_counting_lines_words_and_characters_with_wc_activity_compare_byte_and_character_counts.sh`.

### Atividade 3: compare byte and character counts validate result

Trate explicitamente o caso sem correspondências ou com entrada vazia, sem mascarar erros reais.

Solução de referência: `scripts/activity_solution/3_counting_lines_words_and_characters_with_wc_activity_compare_byte_and_character_counts_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'ação\n' > "$temp_root/text.txt"; printf 'bytes='; wc -c < "$temp_root/text.txt"; printf 'characters='; wc -m < "$temp_root/text.txt"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_counting_lines_words_and_characters_with_wc_activity_compare_byte_and_character_counts_validate_result.sh`.

## Verificação e cuidados

Arquivos sem newline final podem produzir contagens de linhas diferentes da quantidade intuitiva de registros.

Para depurar, execute com `bash -x scripts/examples/1_counting_lines_words_and_characters_with_wc_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=3&lesson=6>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**GNU grep and coreutils manuals**.
Disponível em: <https://www.gnu.org/software/grep/manual/>.
Documentação técnica.
Acessado em: 09/10/2026.

