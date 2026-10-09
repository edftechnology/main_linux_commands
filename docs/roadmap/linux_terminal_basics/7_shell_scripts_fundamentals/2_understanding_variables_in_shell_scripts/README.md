# Entendendo variáveis em scripts de shell

## Resumo

Variáveis shell armazenam texto e são expandidas com `$nome`. Atribuição não admite espaços ao redor de `=`; aspas duplas permitem expansão e aspas simples preservam texto literal.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 2 do módulo 7 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Entendendo variáveis em scripts de shell no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

Use `local` em funções Bash, `${var:-padrão}` para valores opcionais e `export` apenas quando subprocessos precisarem da variável. Variáveis de ambiente são herdadas por processos filhos; não são tipadas como em linguagens estáticas.

### Ideia central

Variáveis shell armazenam texto e são expandidas com `$nome`. Atribuição não admite espaços ao redor de `=`; aspas duplas permitem expansão e aspas simples preservam texto literal.


## Exemplo 1: understanding variables in shell scripts

O exemplo está salvo em `scripts/examples/1_understanding_variables_in_shell_scripts_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
user_name=${1:-visitante}
greeting="Olá, $user_name"
printf '%s\n' "$greeting"
export COURSE_NAME='Linux Terminal Basics'
bash -c 'printf "Filho recebeu: %s\n" "$COURSE_NAME"'
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_understanding_variables_in_shell_scripts_example.sh
```

### Exemplo 2: quote variables with spaces

Arquivo: `scripts/examples/2_understanding_variables_in_shell_scripts_quote_variables_with_spaces.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

first_name='Ada'; greeting='Hello'; printf '%s, %s!\n' "$greeting" "$first_name Lovelace"
```

Execute com `bash scripts/examples/2_understanding_variables_in_shell_scripts_quote_variables_with_spaces.sh`.

### Exemplo 3: quote variables with spaces validate result

Arquivo: `scripts/examples/3_understanding_variables_in_shell_scripts_quote_variables_with_spaces_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

first_name='Ada'; greeting='Hello'; printf '%s, %s!\n' "$greeting" "$first_name Lovelace"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_understanding_variables_in_shell_scripts_quote_variables_with_spaces_validate_result.sh`.

## Atividade 1: tarefa principal: understanding variables in shell scripts

Receba um nome e uma pasta de saída opcional, use padrões seguros e imprima valores com espaços corretamente.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_understanding_variables_in_shell_scripts_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
user_name=${1:-visitante}
output_dir=${2:-"$HOME"}
printf 'Usuário: %s\nSaída: %s\n' "$user_name" "$output_dir"
```

Execute com:

```bash
bash scripts/activity_solution/1_understanding_variables_in_shell_scripts_activity_solution.sh
```

### Atividade 2: quote variables with spaces

Adicione uma variação ao script com entrada opcional e saída previsível.

Solução de referência: `scripts/activity_solution/2_understanding_variables_in_shell_scripts_activity_quote_variables_with_spaces.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

first_name='Ada'; greeting='Hello'; printf '%s, %s!\n' "$greeting" "$first_name Lovelace"
```

Execute com `bash scripts/activity_solution/2_understanding_variables_in_shell_scripts_activity_quote_variables_with_spaces.sh`.

### Atividade 3: quote variables with spaces validate result

Valide uma condição de erro e garanta limpeza de recursos temporários.

Solução de referência: `scripts/activity_solution/3_understanding_variables_in_shell_scripts_activity_quote_variables_with_spaces_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

first_name='Ada'; greeting='Hello'; printf '%s, %s!\n' "$greeting" "$first_name Lovelace"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_understanding_variables_in_shell_scripts_activity_quote_variables_with_spaces_validate_result.sh`.

## Verificação e cuidados

Sem aspas, expansão de variável sofre divisão em palavras e globbing; cite expansões que representam dados.

Para depurar, execute com `bash -x scripts/examples/1_understanding_variables_in_shell_scripts_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=7&lesson=2>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**Bash reference manual**.
Disponível em: <https://www.gnu.org/software/bash/manual/bash.html>.
Documentação técnica.
Acessado em: 09/10/2026.

