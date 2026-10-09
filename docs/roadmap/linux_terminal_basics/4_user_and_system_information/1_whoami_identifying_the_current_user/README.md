# `whoami`: identificando o usuário atual

## Resumo

`whoami` mostra o nome do usuário efetivo do processo. `id` complementa com UID, GID e grupos suplementares, dados que ajudam a entender permissões e acesso a recursos.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 1 do módulo 4 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de `whoami` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Use `id -u` para o UID e `id -Gn` para grupos. O usuário efetivo pode diferir do usuário que iniciou a sessão quando há `sudo`, serviços ou programas setuid.

### Ideia central

`whoami` mostra o nome do usuário efetivo do processo. `id` complementa com UID, GID e grupos suplementares, dados que ajudam a entender permissões e acesso a recursos.


## Exemplo 1: whoami identifying the current user

O exemplo está salvo em `scripts/examples/1_whoami_identifying_the_current_user_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'Usuário: '; whoami
printf 'UID: '; id -u
printf 'Identidade completa: '; id
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_whoami_identifying_the_current_user_example.sh
```

### Exemplo 2: inspect effective identity

Arquivo: `scripts/examples/2_whoami_identifying_the_current_user_inspect_effective_identity.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'User: '; whoami; id; printf 'UID: '; id -u
```

Execute com `bash scripts/examples/2_whoami_identifying_the_current_user_inspect_effective_identity.sh`.

### Exemplo 3: inspect effective identity validate result

Arquivo: `scripts/examples/3_whoami_identifying_the_current_user_inspect_effective_identity_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'User: '; whoami; id; printf 'UID: '; id -u
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_whoami_identifying_the_current_user_inspect_effective_identity_validate_result.sh`.

## Atividade 1: tarefa principal: whoami identifying the current user

Exiba usuário, UID, grupos e entrada correspondente no banco local de contas.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_whoami_identifying_the_current_user_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

user_name=$(whoami)
printf 'Usuário=%s UID=%s\n' "$user_name" "$(id -u)"
getent passwd "$user_name" | cut -d: -f1,3,4,6
```

Execute com:

```bash
bash scripts/activity_solution/1_whoami_identifying_the_current_user_activity_solution.sh
```

### Atividade 2: inspect effective identity

Colete uma segunda informação relacionada e rotule cada campo na saída.

Solução de referência: `scripts/activity_solution/2_whoami_identifying_the_current_user_activity_inspect_effective_identity.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'User: '; whoami; id; printf 'UID: '; id -u
```

Execute com `bash scripts/activity_solution/2_whoami_identifying_the_current_user_activity_inspect_effective_identity.sh`.

### Atividade 3: inspect effective identity validate result

Limite a consulta ao escopo solicitado e trate a ausência de dados ou permissão.

Solução de referência: `scripts/activity_solution/3_whoami_identifying_the_current_user_activity_inspect_effective_identity_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'User: '; whoami; id; printf 'UID: '; id -u
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_whoami_identifying_the_current_user_activity_inspect_effective_identity_validate_result.sh`.

## Verificação e cuidados

Não use o nome exibido como prova isolada de privilégios; confira grupos e permissões do recurso.

Para depurar, execute com `bash -x scripts/examples/1_whoami_identifying_the_current_user_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=4&lesson=1>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

