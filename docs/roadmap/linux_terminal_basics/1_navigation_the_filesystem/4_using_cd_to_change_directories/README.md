# Usando `cd` para mudar de diretório

## Resumo

`cd` é um builtin: altera o diretório do shell atual. Sem argumentos vai para `$HOME`; `cd ..` sobe ao pai e `cd -` volta ao local anterior.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 4 do módulo 1 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Usando `cd` para mudar de diretório no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`pushd` e `popd` mantêm uma pilha em Bash/Zsh. `CDPATH` pode afetar resolução de caminhos; scripts reproduzíveis devem usar caminhos explícitos e tratar falha de `cd`.

### Ideia central

`cd` é um builtin: altera o diretório do shell atual. Sem argumentos vai para `$HOME`; `cd ..` sobe ao pai e `cd -` volta ao local anterior.


## Exemplo 1: using cd to change directories

O exemplo está salvo em `scripts/examples/1_using_cd_to_change_directories_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

first=$(mktemp -d); second=$(mktemp -d)
trap 'rmdir -- "$first" "$second"' EXIT
cd "$first"; printf 'Primeiro: %s\n' "$PWD"
cd "$second"; cd - >/dev/null
printf 'Volta: %s\n' "$PWD"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_using_cd_to_change_directories_example.sh
```

### Exemplo 2: use directory stack

Arquivo: `scripts/examples/2_using_cd_to_change_directories_use_directory_stack.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/a/b"; (cd "$temp_root/a"; pushd b >/dev/null; printf 'Inside: '; pwd; popd >/dev/null; printf 'Back: '; pwd)
```

Execute com `bash scripts/examples/2_using_cd_to_change_directories_use_directory_stack.sh`.

### Exemplo 3: use directory stack validate result

Arquivo: `scripts/examples/3_using_cd_to_change_directories_use_directory_stack_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/a/b"; (cd "$temp_root/a"; pushd b >/dev/null; printf 'Inside: '; pwd; popd >/dev/null; printf 'Back: '; pwd)
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_using_cd_to_change_directories_use_directory_stack_validate_result.sh`.

## Atividade 1: tarefa principal: using cd to change directories

Crie uma subpasta temporária, entre nela, imprima o local e retorne ao diretório inicial.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_using_cd_to_change_directories_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

start_dir=$PWD
temp_root=$(mktemp -d)
trap 'cd -- "$start_dir"; rm -rf -- "$temp_root"' EXIT
mkdir "$temp_root/child"
cd "$temp_root/child"
printf 'Dentro: %s\n' "$PWD"
cd -- "$start_dir"
```

Execute com:

```bash
bash scripts/activity_solution/1_using_cd_to_change_directories_activity_solution.sh
```

### Atividade 2: use directory stack

Faça uma segunda verificação usando uma opção ou forma alternativa do comando principal.

Solução de referência: `scripts/activity_solution/2_using_cd_to_change_directories_activity_use_directory_stack.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/a/b"; (cd "$temp_root/a"; pushd b >/dev/null; printf 'Inside: '; pwd; popd >/dev/null; printf 'Back: '; pwd)
```

Execute com `bash scripts/activity_solution/2_using_cd_to_change_directories_activity_use_directory_stack.sh`.

### Atividade 3: use directory stack validate result

Teste um caso de borda em uma área temporária e valide o resultado esperado.

Solução de referência: `scripts/activity_solution/3_using_cd_to_change_directories_activity_use_directory_stack_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/a/b"; (cd "$temp_root/a"; pushd b >/dev/null; printf 'Inside: '; pwd; popd >/dev/null; printf 'Back: '; pwd)
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_using_cd_to_change_directories_activity_use_directory_stack_validate_result.sh`.

## Verificação e cuidados

`cd` dentro de um script executado normalmente não altera o terminal pai; `source` executa no shell atual.

Para depurar, execute com `bash -x scripts/examples/1_using_cd_to_change_directories_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=1&lesson=4>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**GNU coreutils manual**.
Disponível em: <https://www.gnu.org/software/coreutils/manual/>.
Documentação técnica.
Acessado em: 09/10/2026.

