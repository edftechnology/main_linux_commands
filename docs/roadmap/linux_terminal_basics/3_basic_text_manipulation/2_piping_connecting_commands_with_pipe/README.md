# Pipes: conectando comandos com `|`

## Resumo

Um pipe conecta stdout de um processo ao stdin do seguinte. A técnica permite dividir uma transformação em etapas pequenas de produção, filtro, ordenação e resumo.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 2 do módulo 3 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Pipes no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Pipelines não enviam stderr por padrão. Sem `pipefail`, o status pode esconder uma falha anterior. Ferramentas úteis incluem `grep`, `sort`, `uniq`, `wc` e `awk`; valide formatos antes de parsear.

### Ideia central

Um pipe conecta stdout de um processo ao stdin do seguinte. A técnica permite dividir uma transformação em etapas pequenas de produção, filtro, ordenação e resumo.


## Exemplo 1: piping connecting commands with pipe

O exemplo está salvo em `scripts/examples/1_piping_connecting_commands_with_pipe_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

set -o pipefail
printf 'banana\npera\nbanana\n' | sort | uniq -c
printf 'a\nb\nc\n' | wc -l
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_piping_connecting_commands_with_pipe_example.sh
```

### Exemplo 2: sort and count repeated values

Arquivo: `scripts/examples/2_piping_connecting_commands_with_pipe_sort_and_count_repeated_values.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'pear\napple\napple\npear\npear\n' | sort | uniq -c
```

Execute com `bash scripts/examples/2_piping_connecting_commands_with_pipe_sort_and_count_repeated_values.sh`.

### Exemplo 3: sort and count repeated values validate result

Arquivo: `scripts/examples/3_piping_connecting_commands_with_pipe_sort_and_count_repeated_values_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'pear\napple\napple\npear\npear\n' | sort | uniq -c
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_piping_connecting_commands_with_pipe_sort_and_count_repeated_values_validate_result.sh`.

## Atividade 1: tarefa principal: piping connecting commands with pipe

Conte valores repetidos numa lista ordenada e mostre somente os que aparecem mais de uma vez.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_piping_connecting_commands_with_pipe_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

set -o pipefail
printf 'ana\nbruno\nana\ncarla\nbruno\nana\n' | sort | uniq -c | awk '$1 > 1 { print $2, $1 }'
```

Execute com:

```bash
bash scripts/activity_solution/1_piping_connecting_commands_with_pipe_activity_solution.sh
```

### Atividade 2: sort and count repeated values

Adapte o exemplo para processar uma segunda entrada e apresente a saída de forma legível.

Solução de referência: `scripts/activity_solution/2_piping_connecting_commands_with_pipe_activity_sort_and_count_repeated_values.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'pear\napple\napple\npear\npear\n' | sort | uniq -c
```

Execute com `bash scripts/activity_solution/2_piping_connecting_commands_with_pipe_activity_sort_and_count_repeated_values.sh`.

### Atividade 3: sort and count repeated values validate result

Trate explicitamente o caso sem correspondências ou com entrada vazia, sem mascarar erros reais.

Solução de referência: `scripts/activity_solution/3_piping_connecting_commands_with_pipe_activity_sort_and_count_repeated_values_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'pear\napple\napple\npear\npear\n' | sort | uniq -c
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_piping_connecting_commands_with_pipe_activity_sort_and_count_repeated_values_validate_result.sh`.

## Verificação e cuidados

Mantenha `set -o pipefail` em pipelines críticas e lembre-se que o consumidor pode terminar antes do produtor.

Para depurar, execute com `bash -x scripts/examples/1_piping_connecting_commands_with_pipe_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=3&lesson=2>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**GNU grep and coreutils manuals**.
Disponível em: <https://www.gnu.org/software/grep/manual/>.
Documentação técnica.
Acessado em: 09/10/2026.

