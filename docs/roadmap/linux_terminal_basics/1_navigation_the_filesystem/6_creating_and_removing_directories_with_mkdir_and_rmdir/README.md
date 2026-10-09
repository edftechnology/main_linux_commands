# Criando e removendo diretórios com `mkdir` e `rmdir`

## Resumo

`mkdir` cria diretórios; `-p` também cria pais ausentes e tolera diretório já existente. `rmdir` remove somente diretórios vazios, oferecendo uma proteção útil contra remoções acidentais.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 6 do módulo 1 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Criando e removendo diretórios com `mkdir` e `rmdir` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`mkdir -m` define permissões iniciais, limitadas por `umask`; `rmdir -p` tenta remover também pais vazios. `rm -r` é outra operação e pode apagar conteúdo, então valide a seleção antes.

### Ideia central

`mkdir` cria diretórios; `-p` também cria pais ausentes e tolera diretório já existente. `rmdir` remove somente diretórios vazios, oferecendo uma proteção útil contra remoções acidentais.


## Exemplo 1: creating and removing directories with mkdir and rmdir

O exemplo está salvo em `scripts/examples/1_creating_and_removing_directories_with_mkdir_and_rmdir_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir -p "$temp_root/curso/modulo/licao"
find "$temp_root" -type d -print
rmdir -p "$temp_root/curso/modulo/licao"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_creating_and_removing_directories_with_mkdir_and_rmdir_example.sh
```

### Exemplo 2: create and remove nested directories

Arquivo: `scripts/examples/2_creating_and_removing_directories_with_mkdir_and_rmdir_create_and_remove_nested_directories.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/a/b"; find "$temp_root" -type d -print; rmdir "$temp_root/a/b" "$temp_root/a"
```

Execute com `bash scripts/examples/2_creating_and_removing_directories_with_mkdir_and_rmdir_create_and_remove_nested_directories.sh`.

### Exemplo 3: create and remove nested directories validate result

Arquivo: `scripts/examples/3_creating_and_removing_directories_with_mkdir_and_rmdir_create_and_remove_nested_directories_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/a/b"; find "$temp_root" -type d -print; rmdir "$temp_root/a/b" "$temp_root/a"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_creating_and_removing_directories_with_mkdir_and_rmdir_create_and_remove_nested_directories_validate_result.sh`.

## Atividade 1: tarefa principal: creating and removing directories with mkdir and rmdir

Monte `curso/modulo/licao`, confirme a árvore e remova-a de baixo para cima usando `rmdir`.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_creating_and_removing_directories_with_mkdir_and_rmdir_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
mkdir -p "$temp_root/curso/modulo/licao"
test -d "$temp_root/curso/modulo/licao"
rmdir -p "$temp_root/curso/modulo/licao"
test ! -e "$temp_root/curso"
```

Execute com:

```bash
bash scripts/activity_solution/1_creating_and_removing_directories_with_mkdir_and_rmdir_activity_solution.sh
```

### Atividade 2: create and remove nested directories

Faça uma segunda verificação usando uma opção ou forma alternativa do comando principal.

Solução de referência: `scripts/activity_solution/2_creating_and_removing_directories_with_mkdir_and_rmdir_activity_create_and_remove_nested_directories.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/a/b"; find "$temp_root" -type d -print; rmdir "$temp_root/a/b" "$temp_root/a"
```

Execute com `bash scripts/activity_solution/2_creating_and_removing_directories_with_mkdir_and_rmdir_activity_create_and_remove_nested_directories.sh`.

### Atividade 3: create and remove nested directories validate result

Teste um caso de borda em uma área temporária e valide o resultado esperado.

Solução de referência: `scripts/activity_solution/3_creating_and_removing_directories_with_mkdir_and_rmdir_activity_create_and_remove_nested_directories_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; mkdir -p "$temp_root/a/b"; find "$temp_root" -type d -print; rmdir "$temp_root/a/b" "$temp_root/a"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_creating_and_removing_directories_with_mkdir_and_rmdir_activity_create_and_remove_nested_directories_validate_result.sh`.

## Verificação e cuidados

`rmdir` falha se houver arquivos. Não substitua por `rm -rf` sem verificar cuidadosamente o destino.

Para depurar, execute com `bash -x scripts/examples/1_creating_and_removing_directories_with_mkdir_and_rmdir_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=1&lesson=6>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**GNU coreutils manual**.
Disponível em: <https://www.gnu.org/software/coreutils/manual/>.
Documentação técnica.
Acessado em: 09/10/2026.

