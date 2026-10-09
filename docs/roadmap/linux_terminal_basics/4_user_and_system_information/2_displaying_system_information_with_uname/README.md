# Exibindo informações do sistema com `uname`

## Resumo

`uname` descreve o kernel em execução. `-s` mostra o nome, `-r` a versão, `-m` a arquitetura e `-a` combina os campos disponíveis.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 2 do módulo 4 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Exibindo informações do sistema com `uname` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

A distribuição não é o kernel. Consulte `/etc/os-release` para o nome/versão da distribuição; `hostnamectl` pode reunir informações em sistemas com systemd.

### Ideia central

`uname` descreve o kernel em execução. `-s` mostra o nome, `-r` a versão, `-m` a arquitetura e `-a` combina os campos disponíveis.


## Exemplo 1: displaying system information with uname

O exemplo está salvo em `scripts/examples/1_displaying_system_information_with_uname_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

uname -s
uname -r
uname -m
if [[ -r /etc/os-release ]]; then grep -E '^(NAME|VERSION|PRETTY_NAME)=' /etc/os-release; fi
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_displaying_system_information_with_uname_example.sh
```

### Exemplo 2: read distribution release

Arquivo: `scripts/examples/2_displaying_system_information_with_uname_read_distribution_release.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

uname -srmo; if [[ -r /etc/os-release ]]; then . /etc/os-release; printf '%s %s\n' "$PRETTY_NAME" "$VERSION_ID"; fi
```

Execute com `bash scripts/examples/2_displaying_system_information_with_uname_read_distribution_release.sh`.

### Exemplo 3: read distribution release validate result

Arquivo: `scripts/examples/3_displaying_system_information_with_uname_read_distribution_release_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

uname -srmo; if [[ -r /etc/os-release ]]; then . /etc/os-release; printf '%s %s\n' "$PRETTY_NAME" "$VERSION_ID"; fi
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_displaying_system_information_with_uname_read_distribution_release_validate_result.sh`.

## Atividade 1: tarefa principal: displaying system information with uname

Relate kernel, versão, arquitetura e distribuição em linhas separadas.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_displaying_system_information_with_uname_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'Kernel: %s\n' "$(uname -s)"
printf 'Versão: %s\n' "$(uname -r)"
printf 'Arquitetura: %s\n' "$(uname -m)"
if [[ -r /etc/os-release ]]; then . /etc/os-release; printf 'Distribuição: %s %s\n' "${NAME:-?}" "${VERSION_ID:-}"; fi
```

Execute com:

```bash
bash scripts/activity_solution/1_displaying_system_information_with_uname_activity_solution.sh
```

### Atividade 2: read distribution release

Colete uma segunda informação relacionada e rotule cada campo na saída.

Solução de referência: `scripts/activity_solution/2_displaying_system_information_with_uname_activity_read_distribution_release.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

uname -srmo; if [[ -r /etc/os-release ]]; then . /etc/os-release; printf '%s %s\n' "$PRETTY_NAME" "$VERSION_ID"; fi
```

Execute com `bash scripts/activity_solution/2_displaying_system_information_with_uname_activity_read_distribution_release.sh`.

### Atividade 3: read distribution release validate result

Limite a consulta ao escopo solicitado e trate a ausência de dados ou permissão.

Solução de referência: `scripts/activity_solution/3_displaying_system_information_with_uname_activity_read_distribution_release_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

uname -srmo; if [[ -r /etc/os-release ]]; then . /etc/os-release; printf '%s %s\n' "$PRETTY_NAME" "$VERSION_ID"; fi
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_displaying_system_information_with_uname_activity_read_distribution_release_validate_result.sh`.

## Verificação e cuidados

`uname -m` informa a arquitetura do kernel; um processo de 32 bits pode ter outra largura de palavra.

Para depurar, execute com `bash -x scripts/examples/1_displaying_system_information_with_uname_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=4&lesson=2>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

