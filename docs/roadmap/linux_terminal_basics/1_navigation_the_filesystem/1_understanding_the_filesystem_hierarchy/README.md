# Entendendo a hierarquia do sistema de arquivos

## Resumo

No Linux, caminhos partem de `/`, a raiz. Discos, partições, dispositivos e sistemas remotos são integrados à árvore em pontos de montagem; não há uma letra de unidade para cada disco.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 1 do módulo 1 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Entendendo a hierarquia do sistema de arquivos no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`/home` guarda dados de usuários; `/etc` contém configuração; `/var` recebe dados variáveis, como logs; `/tmp` é temporário; `/usr` reúne programas e recursos; `/dev`, `/proc` e `/sys` expõem dispositivos e interfaces do sistema. A FHS é uma convenção, então confira sua distribuição.

### Ideia central

No Linux, caminhos partem de `/`, a raiz. Discos, partições, dispositivos e sistemas remotos são integrados à árvore em pontos de montagem; não há uma letra de unidade para cada disco.


## Exemplo 1: understanding the filesystem hierarchy

O exemplo está salvo em `scripts/examples/1_understanding_the_filesystem_hierarchy_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

for path in / /home /etc /var /tmp /usr /dev /proc /sys; do
  [[ -e "$path" ]] && printf '%-8s %s\n' "$path" "$(stat -c %F "$path")"
done
findmnt -T / -o TARGET,SOURCE,FSTYPE
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_understanding_the_filesystem_hierarchy_example.sh
```

### Exemplo 2: inspect standard directories

Arquivo: `scripts/examples/2_understanding_the_filesystem_hierarchy_inspect_standard_directories.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

for path in / /home /etc /var /tmp; do [[ -e $path ]] && stat -c '%n: %F' "$path"; done
```

Execute com `bash scripts/examples/2_understanding_the_filesystem_hierarchy_inspect_standard_directories.sh`.

### Exemplo 3: inspect standard directories validate result

Arquivo: `scripts/examples/3_understanding_the_filesystem_hierarchy_inspect_standard_directories_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

for path in / /home /etc /var /tmp; do [[ -e $path ]] && stat -c '%n: %F' "$path"; done
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_understanding_the_filesystem_hierarchy_inspect_standard_directories_validate_result.sh`.

## Atividade 1: tarefa principal: understanding the filesystem hierarchy

Liste os tipos de `/`, `/home`, `/etc`, `/var` e `/tmp` e identifique o sistema montado em `/`.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_understanding_the_filesystem_hierarchy_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

for path in / /home /etc /var /tmp; do
  test -e "$path" && stat -c '%n: %F' "$path"
done
findmnt -T / -o TARGET,SOURCE,FSTYPE
```

Execute com:

```bash
bash scripts/activity_solution/1_understanding_the_filesystem_hierarchy_activity_solution.sh
```

### Atividade 2: inspect standard directories

Faça uma segunda verificação usando uma opção ou forma alternativa do comando principal.

Solução de referência: `scripts/activity_solution/2_understanding_the_filesystem_hierarchy_activity_inspect_standard_directories.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

for path in / /home /etc /var /tmp; do [[ -e $path ]] && stat -c '%n: %F' "$path"; done
```

Execute com `bash scripts/activity_solution/2_understanding_the_filesystem_hierarchy_activity_inspect_standard_directories.sh`.

### Atividade 3: inspect standard directories validate result

Teste um caso de borda em uma área temporária e valide o resultado esperado.

Solução de referência: `scripts/activity_solution/3_understanding_the_filesystem_hierarchy_activity_inspect_standard_directories_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

for path in / /home /etc /var /tmp; do [[ -e $path ]] && stat -c '%n: %F' "$path"; done
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_understanding_the_filesystem_hierarchy_activity_inspect_standard_directories_validate_result.sh`.

## Verificação e cuidados

Não explore a árvore removendo arquivos. `/proc`, `/sys` e `/dev` são interfaces especiais, não pastas comuns de documentos.

Para depurar, execute com `bash -x scripts/examples/1_understanding_the_filesystem_hierarchy_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=1&lesson=1>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**GNU coreutils manual**.
Disponível em: <https://www.gnu.org/software/coreutils/manual/>.
Documentação técnica.
Acessado em: 09/10/2026.

