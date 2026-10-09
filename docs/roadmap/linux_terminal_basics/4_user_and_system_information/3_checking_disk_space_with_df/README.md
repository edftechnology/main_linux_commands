# Verificando espaço em disco com `df`

## Resumo

`df` mostra capacidade, uso e espaço disponível nos sistemas de arquivos montados. `-h` usa unidades legíveis, `-T` informa tipo e `-i` examina disponibilidade de inodes.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 3 do módulo 4 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Verificando espaço em disco com `df` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Consulte `df -h caminho` para descobrir o volume que contém um diretório. Bytes livres e inodes livres são limites diferentes; `du` estima consumo de diretórios, não substitui `df`.

### Ideia central

`df` mostra capacidade, uso e espaço disponível nos sistemas de arquivos montados. `-h` usa unidades legíveis, `-T` informa tipo e `-i` examina disponibilidade de inodes.


## Exemplo 1: checking disk space with df

O exemplo está salvo em `scripts/examples/1_checking_disk_space_with_df_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

df -hT /
printf '\nInodes da raiz:\n'
df -i /
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_checking_disk_space_with_df_example.sh
```

### Exemplo 2: check temporary filesystem space

Arquivo: `scripts/examples/2_checking_disk_space_with_df_check_temporary_filesystem_space.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

df -hT /tmp 2>/dev/null || df -hT /
```

Execute com `bash scripts/examples/2_checking_disk_space_with_df_check_temporary_filesystem_space.sh`.

### Exemplo 3: check temporary filesystem space validate result

Arquivo: `scripts/examples/3_checking_disk_space_with_df_check_temporary_filesystem_space_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

df -hT /tmp 2>/dev/null || df -hT /
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_checking_disk_space_with_df_check_temporary_filesystem_space_validate_result.sh`.

## Atividade 1: tarefa principal: checking disk space with df

Consulte capacidade e inodes do sistema que contém `$HOME` e imprima cabeçalho e resultados.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_checking_disk_space_with_df_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'Espaço para HOME:\n'
df -hT -- "$HOME"
printf '\nInodes para HOME:\n'
df -i -- "$HOME"
```

Execute com:

```bash
bash scripts/activity_solution/1_checking_disk_space_with_df_activity_solution.sh
```

### Atividade 2: check temporary filesystem space

Colete uma segunda informação relacionada e rotule cada campo na saída.

Solução de referência: `scripts/activity_solution/2_checking_disk_space_with_df_activity_check_temporary_filesystem_space.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

df -hT /tmp 2>/dev/null || df -hT /
```

Execute com `bash scripts/activity_solution/2_checking_disk_space_with_df_activity_check_temporary_filesystem_space.sh`.

### Atividade 3: check temporary filesystem space validate result

Limite a consulta ao escopo solicitado e trate a ausência de dados ou permissão.

Solução de referência: `scripts/activity_solution/3_checking_disk_space_with_df_activity_check_temporary_filesystem_space_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

df -hT /tmp 2>/dev/null || df -hT /
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_checking_disk_space_with_df_activity_check_temporary_filesystem_space_validate_result.sh`.

## Verificação e cuidados

Arquivos removidos mas ainda abertos por processos podem manter espaço ocupado e explicar divergência com `du`.

Para depurar, execute com `bash -x scripts/examples/1_checking_disk_space_with_df_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=4&lesson=3>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

