# Removendo pacotes com `apt remove` e `apt purge`

## Resumo

`apt remove` desinstala arquivos do pacote, normalmente preservando configurações do sistema; `apt purge` também remove configurações gerenciadas pelo pacote. Dados do usuário podem permanecer.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 5 do módulo 5 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Removendo pacotes com `apt remove` e `apt purge` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Use `apt-get -s remove` ou `apt-get -s purge` para prévia. Confira a lista de dependências afetadas; `autoremove` deve ser revisado porque pode remover pacotes que você ainda deseja.

### Ideia central

`apt remove` desinstala arquivos do pacote, normalmente preservando configurações do sistema; `apt purge` também remove configurações gerenciadas pelo pacote. Dados do usuário podem permanecer.


## Exemplo 1: removing packages with apt remove and apt purge

O exemplo está salvo em `scripts/examples/1_removing_packages_with_apt_remove_and_apt_purge_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-get -s remove tree | sed -n '1,30p'
printf '\nSimulação de purge:\n'
apt-get -s purge tree | sed -n '1,30p'
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_removing_packages_with_apt_remove_and_apt_purge_example.sh
```

### Exemplo 2: simulate removal without changing system

Arquivo: `scripts/examples/2_removing_packages_with_apt_remove_and_apt_purge_simulate_removal_without_changing_system.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-get -s remove tree | sed -n '1,20p'; printf '
Purge simulation:\n'; apt-get -s purge tree | sed -n '1,20p'
```

Execute com `bash scripts/examples/2_removing_packages_with_apt_remove_and_apt_purge_simulate_removal_without_changing_system.sh`.

### Exemplo 3: simulate removal without changing system validate result

Arquivo: `scripts/examples/3_removing_packages_with_apt_remove_and_apt_purge_simulate_removal_without_changing_system_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-get -s remove tree | sed -n '1,20p'; printf '
Purge simulation:\n'; apt-get -s purge tree | sed -n '1,20p'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_removing_packages_with_apt_remove_and_apt_purge_simulate_removal_without_changing_system_validate_result.sh`.

## Atividade 1: tarefa principal: removing packages with apt remove and apt purge

Compare as simulações de `remove` e `purge` para um pacote instalado e descreva qual é mais abrangente.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_removing_packages_with_apt_remove_and_apt_purge_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

package_name=coreutils
printf 'Remove:\n'; apt-get -s remove "$package_name" | sed -n '1,25p'
printf '\nPurge:\n'; apt-get -s purge "$package_name" | sed -n '1,25p'
```

Execute com:

```bash
bash scripts/activity_solution/1_removing_packages_with_apt_remove_and_apt_purge_activity_solution.sh
```

### Atividade 2: simulate removal without changing system

Use uma consulta local ou simulação para comparar outra opção sem alterar o sistema.

Solução de referência: `scripts/activity_solution/2_removing_packages_with_apt_remove_and_apt_purge_activity_simulate_removal_without_changing_system.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-get -s remove tree | sed -n '1,20p'; printf '
Purge simulation:\n'; apt-get -s purge tree | sed -n '1,20p'
```

Execute com `bash scripts/activity_solution/2_removing_packages_with_apt_remove_and_apt_purge_activity_simulate_removal_without_changing_system.sh`.

### Atividade 3: simulate removal without changing system validate result

Verifique o resultado da consulta e explique o que seria alterado antes de qualquer operação real.

Solução de referência: `scripts/activity_solution/3_removing_packages_with_apt_remove_and_apt_purge_activity_simulate_removal_without_changing_system_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-get -s remove tree | sed -n '1,20p'; printf '
Purge simulation:\n'; apt-get -s purge tree | sed -n '1,20p'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_removing_packages_with_apt_remove_and_apt_purge_activity_simulate_removal_without_changing_system_validate_result.sh`.

## Verificação e cuidados

A simulação pode mostrar remoção de dependências importantes; nunca confirme sem revisar o resumo completo.

Para depurar, execute com `bash -x scripts/examples/1_removing_packages_with_apt_remove_and_apt_purge_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=5&lesson=5>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] DEBIAN PROJECT.
**APT user guide**.
Disponível em: <https://www.debian.org/doc/manuals/apt-guide/>.
Documentação técnica.
Acessado em: 09/10/2026.

