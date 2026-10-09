# Entendendo gerenciadores de pacotes

## Resumo

Um gerenciador resolve dependências, baixa pacotes, verifica metadados e registra instalações. Em Debian/Ubuntu, `apt` é a interface voltada ao usuário e `dpkg` instala/consulta pacotes `.deb` localmente.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 1 do módulo 5 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Entendendo gerenciadores de pacotes no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`apt update` atualiza índices, não instala atualizações; `apt upgrade` aplica versões disponíveis. `apt-cache` consulta metadados locais. `dpkg -L pacote` lista arquivos instalados; repositórios e assinaturas são parte da cadeia de confiança.

### Ideia central

Um gerenciador resolve dependências, baixa pacotes, verifica metadados e registra instalações. Em Debian/Ubuntu, `apt` é a interface voltada ao usuário e `dpkg` instala/consulta pacotes `.deb` localmente.


## Exemplo 1: understanding package managers

O exemplo está salvo em `scripts/examples/1_understanding_package_managers_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'APT: '; apt --version
printf '\ndpkg: '; dpkg --version | head -n 1
printf '\nPolítica do pacote bash:\n'
apt-cache policy bash
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_understanding_package_managers_example.sh
```

### Exemplo 2: inspect package metadata

Arquivo: `scripts/examples/2_understanding_package_managers_inspect_package_metadata.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache policy bash; dpkg-query -W -f='${Package} ${Version}\n' bash 2>/dev/null || true
```

Execute com `bash scripts/examples/2_understanding_package_managers_inspect_package_metadata.sh`.

### Exemplo 3: inspect package metadata validate result

Arquivo: `scripts/examples/3_understanding_package_managers_inspect_package_metadata_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache policy bash; dpkg-query -W -f='${Package} ${Version}\n' bash 2>/dev/null || true
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_understanding_package_managers_inspect_package_metadata_validate_result.sh`.

## Atividade 1: tarefa principal: understanding package managers

Consulte a versão do APT e compare a política local do pacote `bash` sem instalar ou alterar pacotes.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_understanding_package_managers_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt --version
dpkg-query -W -f='${Package} ${Version} ${Status}\n' bash
apt-cache policy bash
```

Execute com:

```bash
bash scripts/activity_solution/1_understanding_package_managers_activity_solution.sh
```

### Atividade 2: inspect package metadata

Use uma consulta local ou simulação para comparar outra opção sem alterar o sistema.

Solução de referência: `scripts/activity_solution/2_understanding_package_managers_activity_inspect_package_metadata.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache policy bash; dpkg-query -W -f='${Package} ${Version}\n' bash 2>/dev/null || true
```

Execute com `bash scripts/activity_solution/2_understanding_package_managers_activity_inspect_package_metadata.sh`.

### Atividade 3: inspect package metadata validate result

Verifique o resultado da consulta e explique o que seria alterado antes de qualquer operação real.

Solução de referência: `scripts/activity_solution/3_understanding_package_managers_activity_inspect_package_metadata_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

apt-cache policy bash; dpkg-query -W -f='${Package} ${Version}\n' bash 2>/dev/null || true
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_understanding_package_managers_activity_inspect_package_metadata_validate_result.sh`.

## Verificação e cuidados

Instalar pacotes pode executar scripts administrativos. Confira origem, nome e alterações antes de confirmar.

Para depurar, execute com `bash -x scripts/examples/1_understanding_package_managers_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=5&lesson=1>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] DEBIAN PROJECT.
**APT user guide**.
Disponível em: <https://www.debian.org/doc/manuals/apt-guide/>.
Documentação técnica.
Acessado em: 09/10/2026.

