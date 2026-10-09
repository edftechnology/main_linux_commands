# Atualizando listas de pacotes com `apt update`

## Resumo

`apt update` baixa índices dos repositórios configurados. Esses índices dizem quais versões e metadados estão disponíveis; a operação não atualiza os programas instalados.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 2 do módulo 5 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Atualizando listas de pacotes com `apt update` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Depois da atualização, `apt list --upgradable` mostra candidatos. Se houver erro de assinatura, rede ou repositório, investigue em vez de desativar verificação de segurança. A ação real exige privilégios administrativos.

### Ideia central

`apt update` baixa índices dos repositórios configurados. Esses índices dizem quais versões e metadados estão disponíveis; a operação não atualiza os programas instalados.


## Exemplo 1: updating package lists with apt update

O exemplo está salvo em `scripts/examples/1_updating_package_lists_with_apt_update_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'Repositórios configurados:\n'
apt-cache policy | head -n 18
printf '\nAtualizações visíveis nos índices atuais:\n'
apt list --upgradable 2>/dev/null | head -n 15
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_updating_package_lists_with_apt_update_example.sh
```

### Exemplo 2: list configured package sources

Arquivo: `scripts/examples/2_updating_package_lists_with_apt_update_list_configured_package_sources.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache policy | sed -n '1,24p'
```

Execute com `bash scripts/examples/2_updating_package_lists_with_apt_update_list_configured_package_sources.sh`.

### Exemplo 3: list configured package sources validate result

Arquivo: `scripts/examples/3_updating_package_lists_with_apt_update_list_configured_package_sources_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache policy | sed -n '1,24p'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_updating_package_lists_with_apt_update_list_configured_package_sources_validate_result.sh`.

## Atividade 1: tarefa principal: updating package lists with apt update

Faça uma checagem de leitura da lista de atualizações e explique que `apt update` atualiza metadados, não pacotes.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_updating_package_lists_with_apt_update_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache policy | head -n 20
apt list --upgradable 2>/dev/null | head -n 20
printf '\nPara atualizar índices manualmente, a ação é: sudo apt update\n'
```

Execute com:

```bash
bash scripts/activity_solution/1_updating_package_lists_with_apt_update_activity_solution.sh
```

### Atividade 2: list configured package sources

Use uma consulta local ou simulação para comparar outra opção sem alterar o sistema.

Solução de referência: `scripts/activity_solution/2_updating_package_lists_with_apt_update_activity_list_configured_package_sources.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache policy | sed -n '1,24p'
```

Execute com `bash scripts/activity_solution/2_updating_package_lists_with_apt_update_activity_list_configured_package_sources.sh`.

### Atividade 3: list configured package sources validate result

Verifique o resultado da consulta e explique o que seria alterado antes de qualquer operação real.

Solução de referência: `scripts/activity_solution/3_updating_package_lists_with_apt_update_activity_list_configured_package_sources_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache policy | sed -n '1,24p'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_updating_package_lists_with_apt_update_activity_list_configured_package_sources_validate_result.sh`.

## Verificação e cuidados

Não execute `apt update` com `sudo` em um exemplo automatizado sem intenção explícita; pode alterar o sistema.

Para depurar, execute com `bash -x scripts/examples/1_updating_package_lists_with_apt_update_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=5&lesson=2>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] DEBIAN PROJECT.
**APT user guide**.
Disponível em: <https://www.debian.org/doc/manuals/apt-guide/>.
Documentação técnica.
Acessado em: 09/10/2026.

