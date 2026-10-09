# Redirecionamento: `>`, `>>` e `<`

## Resumo

Redirecionamentos conectam descritores: `>` cria ou trunca stdout, `>>` acrescenta e `<` fornece um arquivo como stdin. Por padrão, stdout é 1 e stderr é 2.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 1 do módulo 3 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Redirecionamento no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`2>erros.log` captura erros; `>saida.log 2>&1` reúne saídas, e a ordem importa. `/dev/null` descarta saída. O shell abre o destino antes de iniciar o comando, portanto valide caminhos.

### Ideia central

Redirecionamentos conectam descritores: `>` cria ou trunca stdout, `>>` acrescenta e `<` fornece um arquivo como stdin. Por padrão, stdout é 1 e stderr é 2.


## Exemplo 1: redirection greater than greater than and less than

O exemplo está salvo em `scripts/examples/1_redirection_greater_than_greater_than_and_less_than_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
file_path="$temp_root/out.txt"
printf 'primeira\n' > "$file_path"
printf 'segunda\n' >> "$file_path"
cat < "$file_path"
printf 'linhas: '; wc -l < "$file_path"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_redirection_greater_than_greater_than_and_less_than_example.sh
```

### Exemplo 2: redirect standard error

Arquivo: `scripts/examples/2_redirection_greater_than_greater_than_and_less_than_redirect_standard_error.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; ls "$temp_root/missing" 2>"$temp_root/error.log" || true; printf 'Captured error: '; wc -l < "$temp_root/error.log"
```

Execute com `bash scripts/examples/2_redirection_greater_than_greater_than_and_less_than_redirect_standard_error.sh`.

### Exemplo 3: redirect standard error validate result

Arquivo: `scripts/examples/3_redirection_greater_than_greater_than_and_less_than_redirect_standard_error_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; ls "$temp_root/missing" 2>"$temp_root/error.log" || true; printf 'Captured error: '; wc -l < "$temp_root/error.log"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_redirection_greater_than_greater_than_and_less_than_redirect_standard_error_validate_result.sh`.

## Atividade 1: tarefa principal: redirection greater than greater than and less than

Grave duas linhas com `>` e `>>`, leia via `<` e confirme a quantidade.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_redirection_greater_than_greater_than_and_less_than_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
output_file="$temp_root/result.txt"
printf 'um\n' > "$output_file"
printf 'dois\n' >> "$output_file"
cat < "$output_file"
test "$(wc -l < "$output_file")" -eq 2
```

Execute com:

```bash
bash scripts/activity_solution/1_redirection_greater_than_greater_than_and_less_than_activity_solution.sh
```

### Atividade 2: redirect standard error

Adapte o exemplo para processar uma segunda entrada e apresente a saída de forma legível.

Solução de referência: `scripts/activity_solution/2_redirection_greater_than_greater_than_and_less_than_activity_redirect_standard_error.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; ls "$temp_root/missing" 2>"$temp_root/error.log" || true; printf 'Captured error: '; wc -l < "$temp_root/error.log"
```

Execute com `bash scripts/activity_solution/2_redirection_greater_than_greater_than_and_less_than_activity_redirect_standard_error.sh`.

### Atividade 3: redirect standard error validate result

Trate explicitamente o caso sem correspondências ou com entrada vazia, sem mascarar erros reais.

Solução de referência: `scripts/activity_solution/3_redirection_greater_than_greater_than_and_less_than_activity_redirect_standard_error_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; ls "$temp_root/missing" 2>"$temp_root/error.log" || true; printf 'Captured error: '; wc -l < "$temp_root/error.log"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_redirection_greater_than_greater_than_and_less_than_activity_redirect_standard_error_validate_result.sh`.

## Verificação e cuidados

`>` trunca o destino imediatamente. Para preservar conteúdo, use `>>` ou arquivo temporário.

Para depurar, execute com `bash -x scripts/examples/1_redirection_greater_than_greater_than_and_less_than_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=3&lesson=1>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**GNU grep and coreutils manuals**.
Disponível em: <https://www.gnu.org/software/grep/manual/>.
Documentação técnica.
Acessado em: 09/10/2026.

