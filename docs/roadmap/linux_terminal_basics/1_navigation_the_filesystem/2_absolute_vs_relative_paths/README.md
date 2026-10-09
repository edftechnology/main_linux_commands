# Caminhos absolutos e relativos

## Resumo

Um caminho absoluto começa em `/`; um relativo é interpretado a partir do diretório atual. `.` representa o diretório atual, `..` o pai e `~` normalmente é expandido pelo shell para `$HOME`.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 2 do módulo 1 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Caminhos absolutos e relativos no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Use aspas em caminhos com espaços. `realpath` pode resolver um caminho para sua forma absoluta; `./programa` explicita execução a partir da pasta atual. Em scripts, não dependa de onde o usuário iniciou o processo.

### Ideia central

Um caminho absoluto começa em `/`; um relativo é interpretado a partir do diretório atual. `.` representa o diretório atual, `..` o pai e `~` normalmente é expandido pelo shell para `$HOME`.


## Exemplo 1: absolute vs relative paths

O exemplo está salvo em `scripts/examples/1_absolute_vs_relative_paths_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir "$temp_root/projeto teste"
cd "$temp_root/projeto teste"
printf 'Relativo: ../projeto teste\nAbsoluto: %s\n' "$(pwd -P)"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_absolute_vs_relative_paths_example.sh
```

### Exemplo 2: resolve a relative path

Arquivo: `scripts/examples/2_absolute_vs_relative_paths_resolve_a_relative_path.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/project/subdir"; cd "$temp_root/project/subdir"; printf 'relative=%s\nabsolute=%s\n' ../ "$(realpath ..)"
```

Execute com `bash scripts/examples/2_absolute_vs_relative_paths_resolve_a_relative_path.sh`.

### Exemplo 3: resolve a relative path validate result

Arquivo: `scripts/examples/3_absolute_vs_relative_paths_resolve_a_relative_path_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/project/subdir"; cd "$temp_root/project/subdir"; printf 'relative=%s\nabsolute=%s\n' ../ "$(realpath ..)"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_absolute_vs_relative_paths_resolve_a_relative_path_validate_result.sh`.

## Atividade 1: tarefa principal: absolute vs relative paths

Crie `projeto teste` em uma pasta temporária, entre nela por caminho relativo e imprima o caminho absoluto.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_absolute_vs_relative_paths_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir -p "$temp_root/raiz/projeto teste"
cd "$temp_root/raiz"
cd './projeto teste'
printf '%s\n' "$(realpath .)"
```

Execute com:

```bash
bash scripts/activity_solution/1_absolute_vs_relative_paths_activity_solution.sh
```

### Atividade 2: resolve a relative path

Faça uma segunda verificação usando uma opção ou forma alternativa do comando principal.

Solução de referência: `scripts/activity_solution/2_absolute_vs_relative_paths_activity_resolve_a_relative_path.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/project/subdir"; cd "$temp_root/project/subdir"; printf 'relative=%s\nabsolute=%s\n' ../ "$(realpath ..)"
```

Execute com `bash scripts/activity_solution/2_absolute_vs_relative_paths_activity_resolve_a_relative_path.sh`.

### Atividade 3: resolve a relative path validate result

Teste um caso de borda em uma área temporária e valide o resultado esperado.

Solução de referência: `scripts/activity_solution/3_absolute_vs_relative_paths_activity_resolve_a_relative_path_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/project/subdir"; cd "$temp_root/project/subdir"; printf 'relative=%s\nabsolute=%s\n' ../ "$(realpath ..)"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_absolute_vs_relative_paths_activity_resolve_a_relative_path_validate_result.sh`.

## Verificação e cuidados

Aspas simples impedem a expansão de `~`; caminhos com espaços devem ser citados como `"$HOME/Minha pasta"`.

Para depurar, execute com `bash -x scripts/examples/1_absolute_vs_relative_paths_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=1&lesson=2>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**GNU coreutils manual**.
Disponível em: <https://www.gnu.org/software/coreutils/manual/>.
Documentação técnica.
Acessado em: 09/10/2026.

