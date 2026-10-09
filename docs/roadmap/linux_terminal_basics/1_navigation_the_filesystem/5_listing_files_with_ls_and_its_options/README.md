# Listando arquivos com `ls` e suas opções

## Resumo

`ls` apresenta entradas de diretórios. `-l` mostra detalhes, `-a` inclui nomes ocultos, `-h` humaniza tamanhos com `-l`, `-t` ordena por horário e `-R` percorre subdiretórios.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 5 do módulo 1 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Listando arquivos com `ls` e suas opções no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Nomes iniciados por ponto são ocultos por convenção, não protegidos. Use `--` antes de nomes iniciados por hífen. Para processar nomes arbitrários, prefira `find -print0` em vez de analisar a saída formatada de `ls`.

### Ideia central

`ls` apresenta entradas de diretórios. `-l` mostra detalhes, `-a` inclui nomes ocultos, `-h` humaniza tamanhos com `-l`, `-t` ordena por horário e `-R` percorre subdiretórios.


## Exemplo 1: listing files with ls and its options

O exemplo está salvo em `scripts/examples/1_listing_files_with_ls_and_its_options_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
touch "$temp_root/visivel.txt" "$temp_root/.anotacao"
ls -lah -- "$temp_root"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_listing_files_with_ls_and_its_options_example.sh
```

### Exemplo 2: list hidden entries

Arquivo: `scripts/examples/2_listing_files_with_ls_and_its_options_list_hidden_entries.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; touch "$temp_root/visible" "$temp_root/.hidden"; ls -la -- "$temp_root"
```

Execute com `bash scripts/examples/2_listing_files_with_ls_and_its_options_list_hidden_entries.sh`.

### Exemplo 3: list hidden entries validate result

Arquivo: `scripts/examples/3_listing_files_with_ls_and_its_options_list_hidden_entries_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; touch "$temp_root/visible" "$temp_root/.hidden"; ls -la -- "$temp_root"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_listing_files_with_ls_and_its_options_list_hidden_entries_validate_result.sh`.

## Atividade 1: tarefa principal: listing files with ls and its options

Crie arquivos visíveis e ocultos e liste ambos em formato detalhado com tamanhos legíveis.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_listing_files_with_ls_and_its_options_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf x > "$temp_root/a.txt"
printf secret > "$temp_root/.privado"
ls -lah -- "$temp_root"
```

Execute com:

```bash
bash scripts/activity_solution/1_listing_files_with_ls_and_its_options_activity_solution.sh
```

### Atividade 2: list hidden entries

Faça uma segunda verificação usando uma opção ou forma alternativa do comando principal.

Solução de referência: `scripts/activity_solution/2_listing_files_with_ls_and_its_options_activity_list_hidden_entries.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; touch "$temp_root/visible" "$temp_root/.hidden"; ls -la -- "$temp_root"
```

Execute com `bash scripts/activity_solution/2_listing_files_with_ls_and_its_options_activity_list_hidden_entries.sh`.

### Atividade 3: list hidden entries validate result

Teste um caso de borda em uma área temporária e valide o resultado esperado.

Solução de referência: `scripts/activity_solution/3_listing_files_with_ls_and_its_options_activity_list_hidden_entries_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; touch "$temp_root/visible" "$temp_root/.hidden"; ls -la -- "$temp_root"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_listing_files_with_ls_and_its_options_activity_list_hidden_entries_validate_result.sh`.

## Verificação e cuidados

Não use a saída de `ls` como formato de dados: nomes podem conter espaços, quebras de linha e caracteres especiais.

Para depurar, execute com `bash -x scripts/examples/1_listing_files_with_ls_and_its_options_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=1&lesson=5>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**GNU coreutils manual**.
Disponível em: <https://www.gnu.org/software/coreutils/manual/>.
Documentação técnica.
Acessado em: 09/10/2026.

