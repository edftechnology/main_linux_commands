# Instalando pacotes com `apt install`

## Resumo

`apt install pacote` resolve e instala o pacote e dependências a partir de fontes configuradas. O APT apresenta um resumo para revisão antes de efetuar alterações.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 4 do módulo 5 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Instalando pacotes com `apt install` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`apt-get -s install nome` simula; `apt-cache show nome` apresenta metadados. Verifique grafia e repositório para evitar instalar um pacote homônimo não desejado. Instalações administrativas normalmente usam `sudo`.

### Ideia central

`apt install pacote` resolve e instala o pacote e dependências a partir de fontes configuradas. O APT apresenta um resumo para revisão antes de efetuar alterações.


## Exemplo 1: installing packages with apt install

O exemplo está salvo em `scripts/examples/1_installing_packages_with_apt_install_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache show tree 2>/dev/null | sed -n '1,14p' || true
printf '\nSimulação de instalação:\n'
apt-get -s install tree | sed -n '1,30p'
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_installing_packages_with_apt_install_example.sh
```

### Exemplo 2: simulate installation

Arquivo: `scripts/examples/2_installing_packages_with_apt_install_simulate_installation.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache show tree 2>/dev/null | sed -n '1,12p' || true; apt-get -s install tree | sed -n '1,25p'
```

Execute com `bash scripts/examples/2_installing_packages_with_apt_install_simulate_installation.sh`.

### Exemplo 3: simulate installation validate result

Arquivo: `scripts/examples/3_installing_packages_with_apt_install_simulate_installation_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache show tree 2>/dev/null | sed -n '1,12p' || true; apt-get -s install tree | sed -n '1,25p'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_installing_packages_with_apt_install_simulate_installation_validate_result.sh`.

## Atividade 1: tarefa principal: installing packages with apt install

Simule a instalação de `tree`, examine dependências e não confirme nenhuma alteração.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_installing_packages_with_apt_install_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache show tree 2>/dev/null | sed -n '1,18p' || true
apt-get -s install tree | sed -n '1,35p'
printf '\nA simulação não instala o pacote.\n'
```

Execute com:

```bash
bash scripts/activity_solution/1_installing_packages_with_apt_install_activity_solution.sh
```

### Atividade 2: simulate installation

Use uma consulta local ou simulação para comparar outra opção sem alterar o sistema.

Solução de referência: `scripts/activity_solution/2_installing_packages_with_apt_install_activity_simulate_installation.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache show tree 2>/dev/null | sed -n '1,12p' || true; apt-get -s install tree | sed -n '1,25p'
```

Execute com `bash scripts/activity_solution/2_installing_packages_with_apt_install_activity_simulate_installation.sh`.

### Atividade 3: simulate installation validate result

Verifique o resultado da consulta e explique o que seria alterado antes de qualquer operação real.

Solução de referência: `scripts/activity_solution/3_installing_packages_with_apt_install_activity_simulate_installation_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache show tree 2>/dev/null | sed -n '1,12p' || true; apt-get -s install tree | sed -n '1,25p'
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_installing_packages_with_apt_install_activity_simulate_installation_validate_result.sh`.

## Verificação e cuidados

Não adicione `-y` cegamente: a confirmação permite revisar tamanho, dependências e remoções.

Para depurar, execute com `bash -x scripts/examples/1_installing_packages_with_apt_install_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=5&lesson=4>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] DEBIAN PROJECT.
**APT user guide**.
Disponível em: <https://www.debian.org/doc/manuals/apt-guide/>.
Documentação técnica.
Acessado em: 09/10/2026.

