# O comando `echo`: imprimindo no terminal

## Resumo

`echo` imprime argumentos e costuma acrescentar uma quebra de linha, mas opções e escapes variam entre shells. Em scripts previsíveis, use `printf` com formato fixo.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 3 do módulo 3 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de O comando `echo` no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`printf "%s\n" "$value"` preserva o conteúdo da variável; `%q` pode exibir uma forma escapada em Bash. Evite `echo -e` como interface portável.

### Ideia central

`echo` imprime argumentos e costuma acrescentar uma quebra de linha, mas opções e escapes variam entre shells. Em scripts previsíveis, use `printf` com formato fixo.


## Exemplo 1: the echo command printing to the terminal

O exemplo está salvo em `scripts/examples/1_the_echo_command_printing_to_the_terminal_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

message='Olá, terminal'
echo "$message"
printf 'Previsível: %s\n' "$message"
printf 'Literal: %s\n' 'texto\nsem escape'
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_the_echo_command_printing_to_the_terminal_example.sh
```

### Exemplo 2: print literal backslashes safely

Arquivo: `scripts/examples/2_the_echo_command_printing_to_the_terminal_print_literal_backslashes_safely.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

value='text\nnot a newline'; printf 'Value: %s\n' "$value"
```

Execute com `bash scripts/examples/2_the_echo_command_printing_to_the_terminal_print_literal_backslashes_safely.sh`.

### Exemplo 3: print literal backslashes safely validate result

Arquivo: `scripts/examples/3_the_echo_command_printing_to_the_terminal_print_literal_backslashes_safely_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

value='text\nnot a newline'; printf 'Value: %s\n' "$value"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_the_echo_command_printing_to_the_terminal_print_literal_backslashes_safely_validate_result.sh`.

## Atividade 1: tarefa principal: the echo command printing to the terminal

Imprima uma variável com espaços e uma sequência literal `\n`, sem interpretá-la como quebra.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_the_echo_command_printing_to_the_terminal_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

value='texto com espaços\nsem quebra'
printf '%s\n' "$value"
```

Execute com:

```bash
bash scripts/activity_solution/1_the_echo_command_printing_to_the_terminal_activity_solution.sh
```

### Atividade 2: print literal backslashes safely

Adapte o exemplo para processar uma segunda entrada e apresente a saída de forma legível.

Solução de referência: `scripts/activity_solution/2_the_echo_command_printing_to_the_terminal_activity_print_literal_backslashes_safely.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

value='text\nnot a newline'; printf 'Value: %s\n' "$value"
```

Execute com `bash scripts/activity_solution/2_the_echo_command_printing_to_the_terminal_activity_print_literal_backslashes_safely.sh`.

### Atividade 3: print literal backslashes safely validate result

Trate explicitamente o caso sem correspondências ou com entrada vazia, sem mascarar erros reais.

Solução de referência: `scripts/activity_solution/3_the_echo_command_printing_to_the_terminal_activity_print_literal_backslashes_safely_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

value='text\nnot a newline'; printf 'Value: %s\n' "$value"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_the_echo_command_printing_to_the_terminal_activity_print_literal_backslashes_safely_validate_result.sh`.

## Verificação e cuidados

Use formato constante em `printf`; nunca use dados não confiáveis como a própria string de formato.

Para depurar, execute com `bash -x scripts/examples/1_the_echo_command_printing_to_the_terminal_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=3&lesson=3>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**GNU grep and coreutils manuals**.
Disponível em: <https://www.gnu.org/software/grep/manual/>.
Documentação técnica.
Acessado em: 09/10/2026.

