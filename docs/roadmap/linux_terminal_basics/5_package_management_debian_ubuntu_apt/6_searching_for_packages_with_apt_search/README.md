# Pesquisando pacotes com `apt search`

## Resumo

`apt search termo` pesquisa nomes e descrições nos índices disponíveis. `apt show pacote` detalha versão, dependências, tamanho e descrição do pacote selecionado.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 6 do módulo 5 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Pesquisando pacotes com `apt search` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Resultados refletem apenas repositórios habilitados e índices locais. `apt-cache search` é uma alternativa com saída mais fácil de integrar a scripts; use o nome exato após confirmar detalhes.

### Ideia central

`apt search termo` pesquisa nomes e descrições nos índices disponíveis. `apt show pacote` detalha versão, dependências, tamanho e descrição do pacote selecionado.


## Exemplo 1: searching for packages with apt search

O exemplo está salvo em `scripts/examples/1_searching_for_packages_with_apt_search_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache search '^tree$'
apt-cache show tree 2>/dev/null | sed -n '1,22p' || true
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_searching_for_packages_with_apt_search_example.sh
```

### Exemplo 2: search package names

Arquivo: `scripts/examples/2_searching_for_packages_with_apt_search_search_package_names.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache search '^curl$'; apt-cache policy curl
```

Execute com `bash scripts/examples/2_searching_for_packages_with_apt_search_search_package_names.sh`.

### Exemplo 3: search package names validate result

Arquivo: `scripts/examples/3_searching_for_packages_with_apt_search_search_package_names_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache search '^curl$'; apt-cache policy curl
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_searching_for_packages_with_apt_search_search_package_names_validate_result.sh`.

## Atividade 1: tarefa principal: searching for packages with apt search

Pesquise um pacote por nome exato, depois consulte versão candidata, descrição e dependências.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_searching_for_packages_with_apt_search_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache search '^curl$'
apt-cache policy curl
apt-cache show curl 2>/dev/null | grep -E '^(Package|Version|Depends|Description):' | head -n 12 || true
```

Execute com:

```bash
bash scripts/activity_solution/1_searching_for_packages_with_apt_search_activity_solution.sh
```

### Atividade 2: search package names

Use uma consulta local ou simulação para comparar outra opção sem alterar o sistema.

Solução de referência: `scripts/activity_solution/2_searching_for_packages_with_apt_search_activity_search_package_names.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache search '^curl$'; apt-cache policy curl
```

Execute com `bash scripts/activity_solution/2_searching_for_packages_with_apt_search_activity_search_package_names.sh`.

### Atividade 3: search package names validate result

Verifique o resultado da consulta e explique o que seria alterado antes de qualquer operação real.

Solução de referência: `scripts/activity_solution/3_searching_for_packages_with_apt_search_activity_search_package_names_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache search '^curl$'; apt-cache policy curl
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_searching_for_packages_with_apt_search_activity_search_package_names_validate_result.sh`.

## Verificação e cuidados

Resultados vazios podem significar índice desatualizado ou repositório desabilitado, não necessariamente inexistência global.

Para depurar, execute com `bash -x scripts/examples/1_searching_for_packages_with_apt_search_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=5&lesson=6>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] DEBIAN PROJECT.
**APT user guide**.
Disponível em: <https://www.debian.org/doc/manuals/apt-guide/>.
Documentação técnica.
Acessado em: 09/10/2026.

