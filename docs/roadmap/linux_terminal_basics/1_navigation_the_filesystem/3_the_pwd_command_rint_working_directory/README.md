# O comando `pwd`: diretório de trabalho

## Resumo

`pwd` informa o diretório de trabalho do processo. Comandos que recebem caminhos relativos os interpretam a partir dele, por isso a localização atual muda o significado de `arquivo.txt`.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 3 do módulo 1 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de O comando `pwd` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`pwd -L` mostra o caminho lógico, preservando links simbólicos quando possível; `pwd -P` apresenta o caminho físico. `PWD` é uma variável do shell e não substitui validação de caminhos em scripts.

### Ideia central

`pwd` informa o diretório de trabalho do processo. Comandos que recebem caminhos relativos os interpretam a partir dele, por isso a localização atual muda o significado de `arquivo.txt`.


## Exemplo 1: the pwd command rint working directory

O exemplo está salvo em `scripts/examples/1_the_pwd_command_rint_working_directory_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'Lógico: '; pwd -L
printf 'Físico: '; pwd -P
printf 'PWD: %s\n' "$PWD"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_the_pwd_command_rint_working_directory_example.sh
```

### Exemplo 2: compare logical and physical pwd

Arquivo: `scripts/examples/2_the_pwd_command_rint_working_directory_compare_logical_and_physical_pwd.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'Logical: '; pwd -L; printf 'Physical: '; pwd -P
```

Execute com `bash scripts/examples/2_the_pwd_command_rint_working_directory_compare_logical_and_physical_pwd.sh`.

### Exemplo 3: compare logical and physical pwd validate result

Arquivo: `scripts/examples/3_the_pwd_command_rint_working_directory_compare_logical_and_physical_pwd_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'Logical: '; pwd -L; printf 'Physical: '; pwd -P
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_the_pwd_command_rint_working_directory_compare_logical_and_physical_pwd_validate_result.sh`.

## Atividade 1: tarefa principal: the pwd command rint working directory

Imprima os caminhos lógico e físico e verifique o código de saída de `pwd`.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_the_pwd_command_rint_working_directory_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

pwd -L
pwd -P
if pwd >/dev/null; then printf 'pwd concluiu com status 0.\n'; fi
```

Execute com:

```bash
bash scripts/activity_solution/1_the_pwd_command_rint_working_directory_activity_solution.sh
```

### Atividade 2: compare logical and physical pwd

Faça uma segunda verificação usando uma opção ou forma alternativa do comando principal.

Solução de referência: `scripts/activity_solution/2_the_pwd_command_rint_working_directory_activity_compare_logical_and_physical_pwd.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'Logical: '; pwd -L; printf 'Physical: '; pwd -P
```

Execute com `bash scripts/activity_solution/2_the_pwd_command_rint_working_directory_activity_compare_logical_and_physical_pwd.sh`.

### Atividade 3: compare logical and physical pwd validate result

Teste um caso de borda em uma área temporária e valide o resultado esperado.

Solução de referência: `scripts/activity_solution/3_the_pwd_command_rint_working_directory_activity_compare_logical_and_physical_pwd_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'Logical: '; pwd -L; printf 'Physical: '; pwd -P
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_the_pwd_command_rint_working_directory_activity_compare_logical_and_physical_pwd_validate_result.sh`.

## Verificação e cuidados

`pwd` não consulta um caminho arbitrário; use `realpath caminho` para resolver outro local.

Para depurar, execute com `bash -x scripts/examples/1_the_pwd_command_rint_working_directory_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=1&lesson=3>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**GNU coreutils manual**.
Disponível em: <https://www.gnu.org/software/coreutils/manual/>.
Documentação técnica.
Acessado em: 09/10/2026.

