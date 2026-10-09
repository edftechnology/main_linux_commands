# Pesquisando texto com `grep`

## Resumo

`grep` seleciona linhas que correspondem a um padrão. `-i` ignora caixa, `-n` mostra número, `-r` percorre diretórios, `-E` aceita regex estendida e `-F` trata padrão como texto.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 4 do módulo 3 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Pesquisando texto com `grep` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Status 0 indica correspondência, 1 ausência e valores maiores erro. `-v` inverte, `-l` lista arquivos e `--` encerra opções. Trate ausência de correspondência separadamente de falha operacional.

### Ideia central

`grep` seleciona linhas que correspondem a um padrão. `-i` ignora caixa, `-n` mostra número, `-r` percorre diretórios, `-E` aceita regex estendida e `-F` trata padrão como texto.


## Exemplo 1: searching for text with grep

O exemplo está salvo em `scripts/examples/1_searching_for_text_with_grep_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'ok\nERRO: rede\ninfo\n' > "$temp_root/app.log"
grep -inE 'erro|falha' "$temp_root/app.log" || true
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_searching_for_text_with_grep_example.sh
```

### Exemplo 2: search case insensitively

Arquivo: `scripts/examples/2_searching_for_text_with_grep_search_case_insensitively.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'Info\nERROR: disk\n' > "$temp_root/app.log"; grep -inE 'error|warning' "$temp_root/app.log" || true
```

Execute com `bash scripts/examples/2_searching_for_text_with_grep_search_case_insensitively.sh`.

### Exemplo 3: search case insensitively validate result

Arquivo: `scripts/examples/3_searching_for_text_with_grep_search_case_insensitively_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'Info\nERROR: disk\n' > "$temp_root/app.log"; grep -inE 'error|warning' "$temp_root/app.log" || true
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_searching_for_text_with_grep_search_case_insensitively_validate_result.sh`.

## Atividade 1: tarefa principal: searching for text with grep

Pesquise `erro` ou `falha`, sem diferenciar caixa, em dois logs e informe linha e arquivo.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_searching_for_text_with_grep_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'ok\nERRO: disco\n' > "$temp_root/a.log"
printf 'Falha de rede\nok\n' > "$temp_root/b.log"
grep -inHE 'erro|falha' "$temp_root"/*.log
```

Execute com:

```bash
bash scripts/activity_solution/1_searching_for_text_with_grep_activity_solution.sh
```

### Atividade 2: search case insensitively

Adapte o exemplo para processar uma segunda entrada e apresente a saída de forma legível.

Solução de referência: `scripts/activity_solution/2_searching_for_text_with_grep_activity_search_case_insensitively.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'Info\nERROR: disk\n' > "$temp_root/app.log"; grep -inE 'error|warning' "$temp_root/app.log" || true
```

Execute com `bash scripts/activity_solution/2_searching_for_text_with_grep_activity_search_case_insensitively.sh`.

### Atividade 3: search case insensitively validate result

Trate explicitamente o caso sem correspondências ou com entrada vazia, sem mascarar erros reais.

Solução de referência: `scripts/activity_solution/3_searching_for_text_with_grep_activity_search_case_insensitively_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf 'Info\nERROR: disk\n' > "$temp_root/app.log"; grep -inE 'error|warning' "$temp_root/app.log" || true
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_searching_for_text_with_grep_activity_search_case_insensitively_validate_result.sh`.

## Verificação e cuidados

Use `grep -F` para padrões literais; regex tem metacaracteres e padrões iniciados por hífen precisam de `--`.

Para depurar, execute com `bash -x scripts/examples/1_searching_for_text_with_grep_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=3&lesson=4>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**GNU grep and coreutils manuals**.
Disponível em: <https://www.gnu.org/software/grep/manual/>.
Documentação técnica.
Acessado em: 09/10/2026.

