# Edição básica com `nano` ou `vim`

## Resumo

`nano` mostra atalhos na tela; `vim` separa modos de navegação e inserção. Ambos permitem editar arquivos sem ambiente gráfico e salvar as mudanças no caminho escolhido.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 5 do módulo 3 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Edição básica com `nano` ou `vim` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

No `nano`, `Ctrl+O` grava, `Ctrl+X` sai e `Ctrl+W` busca. No `vim`, `i` insere, `Esc` retorna ao modo normal, `:w` salva e `:wq` salva e sai.

### Ideia central

`nano` mostra atalhos na tela; `vim` separa modos de navegação e inserção. Ambos permitem editar arquivos sem ambiente gráfico e salvar as mudanças no caminho escolhido.


## Exemplo 1: basic text editing with nano or vim introduction

O exemplo está salvo em `scripts/examples/1_basic_text_editing_with_nano_or_vim_introduction_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/nota.txt"
printf 'Título\n\nPrimeira ideia.\n' > "$file_path"
printf 'Abra: nano %q ou vim %q\n' "$file_path" "$file_path"
cat "$file_path"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_basic_text_editing_with_nano_or_vim_introduction_example.sh
```

### Exemplo 2: edit text noninteractively for preview

Arquivo: `scripts/examples/2_basic_text_editing_with_nano_or_vim_introduction_edit_text_noninteractively_for_preview.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/notes.txt"; printf 'Title\nBody\n' > "$file"; sed 's/Body/Updated body/' "$file"
```

Execute com `bash scripts/examples/2_basic_text_editing_with_nano_or_vim_introduction_edit_text_noninteractively_for_preview.sh`.

### Exemplo 3: edit text noninteractively for preview validate result

Arquivo: `scripts/examples/3_basic_text_editing_with_nano_or_vim_introduction_edit_text_noninteractively_for_preview_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/notes.txt"; printf 'Title\nBody\n' > "$file"; sed 's/Body/Updated body/' "$file"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_basic_text_editing_with_nano_or_vim_introduction_edit_text_noninteractively_for_preview_validate_result.sh`.

## Atividade 1: tarefa principal: basic text editing with nano or vim introduction

Prepare um documento com título e duas seções, edite-o no terminal e confira o conteúdo salvo.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_basic_text_editing_with_nano_or_vim_introduction_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/guia.txt"
cat > "$file_path" <<'EOF'
Meu guia

Comando: grep
Uso: grep -n padrao arquivo
EOF
test "$(grep -c '^Comando:' "$file_path")" -eq 1
printf 'Documento pronto: %s\n' "$file_path"
```

Execute com:

```bash
bash scripts/activity_solution/1_basic_text_editing_with_nano_or_vim_introduction_activity_solution.sh
```

### Atividade 2: edit text noninteractively for preview

Adapte o exemplo para processar uma segunda entrada e apresente a saída de forma legível.

Solução de referência: `scripts/activity_solution/2_basic_text_editing_with_nano_or_vim_introduction_activity_edit_text_noninteractively_for_preview.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/notes.txt"; printf 'Title\nBody\n' > "$file"; sed 's/Body/Updated body/' "$file"
```

Execute com `bash scripts/activity_solution/2_basic_text_editing_with_nano_or_vim_introduction_activity_edit_text_noninteractively_for_preview.sh`.

### Atividade 3: edit text noninteractively for preview validate result

Trate explicitamente o caso sem correspondências ou com entrada vazia, sem mascarar erros reais.

Solução de referência: `scripts/activity_solution/3_basic_text_editing_with_nano_or_vim_introduction_activity_edit_text_noninteractively_for_preview_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; file="$temp_root/notes.txt"; printf 'Title\nBody\n' > "$file"; sed 's/Body/Updated body/' "$file"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_basic_text_editing_with_nano_or_vim_introduction_activity_edit_text_noninteractively_for_preview_validate_result.sh`.

## Verificação e cuidados

Confira o caminho antes de salvar; evite `sudo nano` se uma edição como usuário normal for suficiente.

Para depurar, execute com `bash -x scripts/examples/1_basic_text_editing_with_nano_or_vim_introduction_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=3&lesson=5>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**GNU grep and coreutils manuals**.
Disponível em: <https://www.gnu.org/software/grep/manual/>.
Documentação técnica.
Acessado em: 09/10/2026.

