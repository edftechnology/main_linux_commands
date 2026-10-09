# Criando arquivos vazios com `touch`

## Resumo

`touch` cria um arquivo vazio se ele não existe; se existe, atualiza horários sem apagar o conteúdo. Ele é útil para criar marcadores e ajustar timestamps.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 1 do módulo 2 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Criando arquivos vazios com `touch` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`touch -c` evita criar arquivos ausentes; datas podem ser definidas com `-d`. Para escrever conteúdo use `printf` ou um editor. `>` trunca, ao contrário de `touch`.

### Ideia central

`touch` cria um arquivo vazio se ele não existe; se existe, atualiza horários sem apagar o conteúdo. Ele é útil para criar marcadores e ajustar timestamps.


## Exemplo 1: creating empty files with touch

O exemplo está salvo em `scripts/examples/1_creating_empty_files_with_touch_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/nota.txt"
touch -- "$file_path"
printf 'Inicial: '; stat -c '%s bytes' "$file_path"
printf 'preservado\n' > "$file_path"
touch -- "$file_path"
cat "$file_path"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_creating_empty_files_with_touch_example.sh
```

### Exemplo 2: update timestamp without truncating

Arquivo: `scripts/examples/2_creating_empty_files_with_touch_update_timestamp_without_truncating.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/note.txt"; printf 'keep me\n' > "$file"; touch -- "$file"; cat -- "$file"
```

Execute com `bash scripts/examples/2_creating_empty_files_with_touch_update_timestamp_without_truncating.sh`.

### Exemplo 3: update timestamp without truncating validate result

Arquivo: `scripts/examples/3_creating_empty_files_with_touch_update_timestamp_without_truncating_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/note.txt"; printf 'keep me\n' > "$file"; touch -- "$file"; cat -- "$file"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_creating_empty_files_with_touch_update_timestamp_without_truncating_validate_result.sh`.

## Atividade 1: tarefa principal: creating empty files with touch

Crie um arquivo vazio, confira o tamanho, grave uma linha e atualize seu horário sem perder o conteúdo.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_creating_empty_files_with_touch_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/registro.txt"
touch -- "$file_path"
test -f "$file_path" && test ! -s "$file_path"
printf 'dado\n' > "$file_path"
touch -- "$file_path"
test "$(cat "$file_path")" = dado
```

Execute com:

```bash
bash scripts/activity_solution/1_creating_empty_files_with_touch_activity_solution.sh
```

### Atividade 2: update timestamp without truncating

Repita a operação usando uma opção adicional relevante, sem modificar arquivos fora do diretório temporário.

Solução de referência: `scripts/activity_solution/2_creating_empty_files_with_touch_activity_update_timestamp_without_truncating.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/note.txt"; printf 'keep me\n' > "$file"; touch -- "$file"; cat -- "$file"
```

Execute com `bash scripts/activity_solution/2_creating_empty_files_with_touch_activity_update_timestamp_without_truncating.sh`.

### Atividade 3: update timestamp without truncating validate result

Inclua uma validação antes e depois da operação e confirme que um arquivo não relacionado foi preservado.

Solução de referência: `scripts/activity_solution/3_creating_empty_files_with_touch_activity_update_timestamp_without_truncating_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/note.txt"; printf 'keep me\n' > "$file"; touch -- "$file"; cat -- "$file"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_creating_empty_files_with_touch_activity_update_timestamp_without_truncating_validate_result.sh`.

## Verificação e cuidados

Não use `>` para testar se um arquivo existe: esse redirecionamento pode truncá-lo.

Para depurar, execute com `bash -x scripts/examples/1_creating_empty_files_with_touch_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=2&lesson=1>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

