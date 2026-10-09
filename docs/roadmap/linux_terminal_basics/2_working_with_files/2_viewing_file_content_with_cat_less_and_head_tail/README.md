# Visualizando arquivos com `cat`, `less`, `head` e `tail`

## Resumo

`cat` imprime ou concatena conteúdo; `less` oferece navegação; `head` mostra o início e `tail` o final. Use cada ferramenta conforme o tamanho e a forma de exploração desejada.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 2 do módulo 2 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Visualizando arquivos com `cat`, `less`, `head` e `tail` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`head -n N` e `tail -n N` limitam linhas; `tail -f` acompanha crescimento de logs. `less -S` evita quebra de linhas longas. Não use ferramentas de texto para interpretar binários.

### Ideia central

`cat` imprime ou concatena conteúdo; `less` oferece navegação; `head` mostra o início e `tail` o final. Use cada ferramenta conforme o tamanho e a forma de exploração desejada.


## Exemplo 1: viewing file content with cat less and head tail

O exemplo está salvo em `scripts/examples/1_viewing_file_content_with_cat_less_and_head_tail_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
for number in {1..8}; do printf 'linha %s\n' "$number"; done > "$temp_root/app.log"
head -n 3 "$temp_root/app.log"
tail -n 2 "$temp_root/app.log"
cat "$temp_root/app.log"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_viewing_file_content_with_cat_less_and_head_tail_example.sh
```

### Exemplo 2: compare head and tail

Arquivo: `scripts/examples/2_viewing_file_content_with_cat_less_and_head_tail_compare_head_and_tail.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; seq 1 8 > "$temp_root/lines.txt"; printf 'First lines:\n'; head -n 3 "$temp_root/lines.txt"; printf 'Last lines:\n'; tail -n 2 "$temp_root/lines.txt"
```

Execute com `bash scripts/examples/2_viewing_file_content_with_cat_less_and_head_tail_compare_head_and_tail.sh`.

### Exemplo 3: compare head and tail validate result

Arquivo: `scripts/examples/3_viewing_file_content_with_cat_less_and_head_tail_compare_head_and_tail_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; seq 1 8 > "$temp_root/lines.txt"; printf 'First lines:\n'; head -n 3 "$temp_root/lines.txt"; printf 'Last lines:\n'; tail -n 2 "$temp_root/lines.txt"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_viewing_file_content_with_cat_less_and_head_tail_compare_head_and_tail_validate_result.sh`.

## Atividade 1: tarefa principal: viewing file content with cat less and head tail

Gere dez linhas, mostre as três primeiras e últimas, e filtre as linhas contendo `erro`.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_viewing_file_content_with_cat_less_and_head_tail_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
printf 'inicio\nok\nerro: disco\nok\nok\nerro: rede\nok\nfim\n' > "$temp_root/app.log"
head -n 3 "$temp_root/app.log"
tail -n 3 "$temp_root/app.log"
grep -n 'erro' "$temp_root/app.log"
```

Execute com:

```bash
bash scripts/activity_solution/1_viewing_file_content_with_cat_less_and_head_tail_activity_solution.sh
```

### Atividade 2: compare head and tail

Repita a operação usando uma opção adicional relevante, sem modificar arquivos fora do diretório temporário.

Solução de referência: `scripts/activity_solution/2_viewing_file_content_with_cat_less_and_head_tail_activity_compare_head_and_tail.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; seq 1 8 > "$temp_root/lines.txt"; printf 'First lines:\n'; head -n 3 "$temp_root/lines.txt"; printf 'Last lines:\n'; tail -n 2 "$temp_root/lines.txt"
```

Execute com `bash scripts/activity_solution/2_viewing_file_content_with_cat_less_and_head_tail_activity_compare_head_and_tail.sh`.

### Atividade 3: compare head and tail validate result

Inclua uma validação antes e depois da operação e confirme que um arquivo não relacionado foi preservado.

Solução de referência: `scripts/activity_solution/3_viewing_file_content_with_cat_less_and_head_tail_activity_compare_head_and_tail_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; seq 1 8 > "$temp_root/lines.txt"; printf 'First lines:\n'; head -n 3 "$temp_root/lines.txt"; printf 'Last lines:\n'; tail -n 2 "$temp_root/lines.txt"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_viewing_file_content_with_cat_less_and_head_tail_activity_compare_head_and_tail_validate_result.sh`.

## Verificação e cuidados

`tail -f` permanece ativo até `Ctrl+C`; prefira uma quantidade limitada em scripts não interativos.

Para depurar, execute com `bash -x scripts/examples/1_viewing_file_content_with_cat_less_and_head_tail_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=2&lesson=2>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] LINUX MAN-PAGES PROJECT.
**Linux manual pages**.
Disponível em: <https://man7.org/linux/man-pages/>.
Documentação técnica.
Acessado em: 09/10/2026.

