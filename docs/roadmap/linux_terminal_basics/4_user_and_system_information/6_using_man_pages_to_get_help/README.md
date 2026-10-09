# Usando páginas `man` para obter ajuda

## Resumo

`man comando` abre documentação local. As seções distinguem comandos (1), chamadas de sistema (2), formatos (5) e administração (8).

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 6 do módulo 4 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Usando páginas `man` para obter ajuda no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Dentro do pager, `/termo` busca, `n` avança e `q` sai. `man -k palavra` pesquisa descrições; `--help` costuma ser um resumo rápido, enquanto a manpage detalha opções e semântica.

### Ideia central

`man comando` abre documentação local. As seções distinguem comandos (1), chamadas de sistema (2), formatos (5) e administração (8).


## Exemplo 1: using man pages to get help

O exemplo está salvo em `scripts/examples/1_using_man_pages_to_get_help_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

ls --help | head -n 12
man -f find 2>/dev/null || true
man -k directory 2>/dev/null | head -n 8 || true
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_using_man_pages_to_get_help_example.sh
```

### Exemplo 2: inspect local help without pager

Arquivo: `scripts/examples/2_using_man_pages_to_get_help_inspect_local_help_without_pager.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'find help excerpt:\n'; find --help | sed -n '1,12p'; printf '
Manual pages installed: '; command -v man || true
```

Execute com `bash scripts/examples/2_using_man_pages_to_get_help_inspect_local_help_without_pager.sh`.

### Exemplo 3: inspect local help without pager validate result

Arquivo: `scripts/examples/3_using_man_pages_to_get_help_inspect_local_help_without_pager_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'find help excerpt:\n'; find --help | sed -n '1,12p'; printf '
Manual pages installed: '; command -v man || true
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_using_man_pages_to_get_help_inspect_local_help_without_pager_validate_result.sh`.

## Atividade 1: tarefa principal: using man pages to get help

Encontre a página de `find`, descubra se `passwd` possui páginas em mais de uma seção e pesquise “directory”.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_using_man_pages_to_get_help_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

man -f find 2>/dev/null || true
man -f passwd 2>/dev/null || true
man -k directory 2>/dev/null | head -n 10 || true
```

Execute com:

```bash
bash scripts/activity_solution/1_using_man_pages_to_get_help_activity_solution.sh
```

### Atividade 2: inspect local help without pager

Colete uma segunda informação relacionada e rotule cada campo na saída.

Solução de referência: `scripts/activity_solution/2_using_man_pages_to_get_help_activity_inspect_local_help_without_pager.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'find help excerpt:\n'; find --help | sed -n '1,12p'; printf '
Manual pages installed: '; command -v man || true
```

Execute com `bash scripts/activity_solution/2_using_man_pages_to_get_help_activity_inspect_local_help_without_pager.sh`.

### Atividade 3: inspect local help without pager validate result

Limite a consulta ao escopo solicitado e trate a ausência de dados ou permissão.

Solução de referência: `scripts/activity_solution/3_using_man_pages_to_get_help_activity_inspect_local_help_without_pager_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

printf 'find help excerpt:\n'; find --help | sed -n '1,12p'; printf '
Manual pages installed: '; command -v man || true
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_using_man_pages_to_get_help_activity_inspect_local_help_without_pager_validate_result.sh`.

## Verificação e cuidados

`man 5 passwd` documenta o formato do arquivo; `man 1 passwd` pode documentar o comando.

Para depurar, execute com `bash -x scripts/examples/1_using_man_pages_to_get_help_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=4&lesson=6>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

