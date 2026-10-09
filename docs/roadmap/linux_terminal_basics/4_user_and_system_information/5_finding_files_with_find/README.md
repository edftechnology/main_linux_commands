# Localizando arquivos com `find`

## Resumo

`find` percorre uma árvore aplicando testes como `-name`, `-type`, `-size` e `-mtime`. Testes podem ser combinados e ações aplicadas aos resultados.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 5 do módulo 4 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Localizando arquivos com `find` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Comece com `-print`; use `-print0` com `xargs -0` para nomes arbitrários. `-exec comando {} +` agrupa argumentos. Só use `-delete` depois de conferir cuidadosamente a prévia e limitar a raiz.

### Ideia central

`find` percorre uma árvore aplicando testes como `-name`, `-type`, `-size` e `-mtime`. Testes podem ser combinados e ações aplicadas aos resultados.


## Exemplo 1: finding files with find

O exemplo está salvo em `scripts/examples/1_finding_files_with_find_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir -p "$temp_root/docs" "$temp_root/logs"
touch "$temp_root/docs/guia.txt" "$temp_root/logs/app.log"
find "$temp_root" -type f -name '*.txt' -print
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_finding_files_with_find_example.sh
```

### Exemplo 2: find files by name and type

Arquivo: `scripts/examples/2_finding_files_with_find_find_files_by_name_and_type.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir "$temp_root/sub"; touch "$temp_root/a.log" "$temp_root/sub/b.txt"; find "$temp_root" -type f -name '*.log' -print
```

Execute com `bash scripts/examples/2_finding_files_with_find_find_files_by_name_and_type.sh`.

### Exemplo 3: find files by name and type validate result

Arquivo: `scripts/examples/3_finding_files_with_find_find_files_by_name_and_type_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir "$temp_root/sub"; touch "$temp_root/a.log" "$temp_root/sub/b.txt"; find "$temp_root" -type f -name '*.log' -print
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_finding_files_with_find_find_files_by_name_and_type_validate_result.sh`.

## Atividade 1: tarefa principal: finding files with find

Encontre arquivos `.log` e arquivos vazios dentro de uma árvore temporária, sem apagar nada.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_finding_files_with_find_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir -p "$temp_root/a" "$temp_root/b"
printf 'log\n' > "$temp_root/a/app.log"
touch "$temp_root/b/empty.txt"
find "$temp_root" -type f -name '*.log' -print
find "$temp_root" -type f -empty -print
```

Execute com:

```bash
bash scripts/activity_solution/1_finding_files_with_find_activity_solution.sh
```

### Atividade 2: find files by name and type

Colete uma segunda informação relacionada e rotule cada campo na saída.

Solução de referência: `scripts/activity_solution/2_finding_files_with_find_activity_find_files_by_name_and_type.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir "$temp_root/sub"; touch "$temp_root/a.log" "$temp_root/sub/b.txt"; find "$temp_root" -type f -name '*.log' -print
```

Execute com `bash scripts/activity_solution/2_finding_files_with_find_activity_find_files_by_name_and_type.sh`.

### Atividade 3: find files by name and type validate result

Limite a consulta ao escopo solicitado e trate a ausência de dados ou permissão.

Solução de referência: `scripts/activity_solution/3_finding_files_with_find_activity_find_files_by_name_and_type_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir "$temp_root/sub"; touch "$temp_root/a.log" "$temp_root/sub/b.txt"; find "$temp_root" -type f -name '*.log' -print
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_finding_files_with_find_activity_find_files_by_name_and_type_validate_result.sh`.

## Verificação e cuidados

Uma busca iniciada em `/` pode ser lenta e gerar erros; delimite a raiz e avalie permissões.

Para depurar, execute com `bash -x scripts/examples/1_finding_files_with_find_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=4&lesson=5>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

