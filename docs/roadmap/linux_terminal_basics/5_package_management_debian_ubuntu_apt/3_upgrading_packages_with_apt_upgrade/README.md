# Atualizando pacotes com `apt upgrade`

## Resumo

`apt upgrade` instala versões novas dos pacotes instalados com base nos índices disponíveis. Dependências podem ser adicionadas; algumas mudanças que removem pacotes requerem uma operação diferente e revisão cuidadosa.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 3 do módulo 5 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Atualizando pacotes com `apt upgrade` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Revise a lista de alterações e mantenha backups para serviços críticos. `apt-get -s upgrade` simula a operação sem aplicá-la; reinicializações podem ser necessárias após atualizações de kernel ou bibliotecas centrais.

### Ideia central

`apt upgrade` instala versões novas dos pacotes instalados com base nos índices disponíveis. Dependências podem ser adicionadas; algumas mudanças que removem pacotes requerem uma operação diferente e revisão cuidadosa.


## Exemplo 1: upgrading packages with apt upgrade

O exemplo está salvo em `scripts/examples/1_upgrading_packages_with_apt_upgrade_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-get -s upgrade | sed -n '1,35p'
printf '\nPacotes atualizáveis segundo os índices locais:\n'
apt list --upgradable 2>/dev/null | head -n 15
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_upgrading_packages_with_apt_upgrade_example.sh
```

### Exemplo 2: simulate upgrade summary

Arquivo: `scripts/examples/2_upgrading_packages_with_apt_upgrade_simulate_upgrade_summary.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-get -s upgrade | sed -n '1,30p'
```

Execute com `bash scripts/examples/2_upgrading_packages_with_apt_upgrade_simulate_upgrade_summary.sh`.

### Exemplo 3: simulate upgrade summary validate result

Arquivo: `scripts/examples/3_upgrading_packages_with_apt_upgrade_simulate_upgrade_summary_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-get -s upgrade | sed -n '1,30p'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_upgrading_packages_with_apt_upgrade_simulate_upgrade_summary_validate_result.sh`.

## Atividade 1: tarefa principal: upgrading packages with apt upgrade

Execute uma simulação e identifique quantos pacotes seriam atualizados; não altere o sistema no exercício.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_upgrading_packages_with_apt_upgrade_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

simulation=$(apt-get -s upgrade)
printf '%s\n' "$simulation" | sed -n '1,40p'
printf '%s\n' "$simulation" | grep -E '^[0-9]+ upgraded' || true
```

Execute com:

```bash
bash scripts/activity_solution/1_upgrading_packages_with_apt_upgrade_activity_solution.sh
```

### Atividade 2: simulate upgrade summary

Use uma consulta local ou simulação para comparar outra opção sem alterar o sistema.

Solução de referência: `scripts/activity_solution/2_upgrading_packages_with_apt_upgrade_activity_simulate_upgrade_summary.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-get -s upgrade | sed -n '1,30p'
```

Execute com `bash scripts/activity_solution/2_upgrading_packages_with_apt_upgrade_activity_simulate_upgrade_summary.sh`.

### Atividade 3: simulate upgrade summary validate result

Verifique o resultado da consulta e explique o que seria alterado antes de qualquer operação real.

Solução de referência: `scripts/activity_solution/3_upgrading_packages_with_apt_upgrade_activity_simulate_upgrade_summary_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-get -s upgrade | sed -n '1,30p'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_upgrading_packages_with_apt_upgrade_activity_simulate_upgrade_summary_validate_result.sh`.

## Verificação e cuidados

A simulação depende dos índices existentes e não substitui a leitura do resumo antes de confirmar.

Para depurar, execute com `bash -x scripts/examples/1_upgrading_packages_with_apt_upgrade_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=5&lesson=3>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] DEBIAN PROJECT.
**APT user guide**.
Disponível em: <https://www.debian.org/doc/manuals/apt-guide/>.
Documentação técnica.
Acessado em: 09/10/2026.

