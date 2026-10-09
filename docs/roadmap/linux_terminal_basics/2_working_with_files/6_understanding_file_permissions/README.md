# Entendendo permissões de arquivos

## Resumo

Permissões tradicionais definem leitura (`r`), escrita (`w`) e execução (`x`) para proprietário, grupo e demais usuários. Em diretórios, `x` permite atravessar e acessar entradas.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 6 do módulo 2 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Entendendo permissões de arquivos no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`chmod 640 arquivo` resulta em rw-r-----; `chmod u+x script` adiciona execução ao proprietário. `umask` remove permissões do padrão de criação. ACLs e políticas como AppArmor podem acrescentar controles.

### Ideia central

Permissões tradicionais definem leitura (`r`), escrita (`w`) e execução (`x`) para proprietário, grupo e demais usuários. Em diretórios, `x` permite atravessar e acessar entradas.


## Exemplo 1: understanding file permissions

O exemplo está salvo em `scripts/examples/1_understanding_file_permissions_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/script.sh"
printf '#!/usr/bin/env bash\necho pronto\n' > "$file_path"
chmod 640 "$file_path"
stat -c '%A %a %n' "$file_path"
chmod u+x "$file_path"
stat -c '%A %a %n' "$file_path"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_understanding_file_permissions_example.sh
```

### Exemplo 2: inspect umask and symbolic permissions

Arquivo: `scripts/examples/2_understanding_file_permissions_inspect_umask_and_symbolic_permissions.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/data"; touch "$file"; chmod u=rw,go= "$file"; stat -c '%A %a' "$file"; umask
```

Execute com `bash scripts/examples/2_understanding_file_permissions_inspect_umask_and_symbolic_permissions.sh`.

### Exemplo 3: inspect umask and symbolic permissions validate result

Arquivo: `scripts/examples/3_understanding_file_permissions_inspect_umask_and_symbolic_permissions_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/data"; touch "$file"; chmod u=rw,go= "$file"; stat -c '%A %a' "$file"; umask
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_understanding_file_permissions_inspect_umask_and_symbolic_permissions_validate_result.sh`.

## Atividade 1: tarefa principal: understanding file permissions

Defina `640`, adicione execução apenas ao proprietário e confirme os modos antes e depois.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_understanding_file_permissions_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/privado.txt"
printf 'conteudo\n' > "$file_path"
chmod 640 "$file_path"
test "$(stat -c %a "$file_path")" = 640
chmod u+x "$file_path"
test "$(stat -c %a "$file_path")" = 740
stat -c '%A (%a)' "$file_path"
```

Execute com:

```bash
bash scripts/activity_solution/1_understanding_file_permissions_activity_solution.sh
```

### Atividade 2: inspect umask and symbolic permissions

Repita a operação usando uma opção adicional relevante, sem modificar arquivos fora do diretório temporário.

Solução de referência: `scripts/activity_solution/2_understanding_file_permissions_activity_inspect_umask_and_symbolic_permissions.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/data"; touch "$file"; chmod u=rw,go= "$file"; stat -c '%A %a' "$file"; umask
```

Execute com `bash scripts/activity_solution/2_understanding_file_permissions_activity_inspect_umask_and_symbolic_permissions.sh`.

### Atividade 3: inspect umask and symbolic permissions validate result

Inclua uma validação antes e depois da operação e confirme que um arquivo não relacionado foi preservado.

Solução de referência: `scripts/activity_solution/3_understanding_file_permissions_activity_inspect_umask_and_symbolic_permissions_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/data"; touch "$file"; chmod u=rw,go= "$file"; stat -c '%A %a' "$file"; umask
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_understanding_file_permissions_activity_inspect_umask_and_symbolic_permissions_validate_result.sh`.

## Verificação e cuidados

Evite `chmod 777` como solução genérica. `chown` pode exigir privilégio administrativo.

Para depurar, execute com `bash -x scripts/examples/1_understanding_file_permissions_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=2&lesson=6>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

