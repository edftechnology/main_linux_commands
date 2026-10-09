# Executando scripts de shell

## Resumo

Um script pode ser executado pelo interpretador (`bash script.sh`) ou diretamente (`./script.sh`) quando tem shebang e permissão executável. O método escolhido determina qual interpretador e ambiente são usados.

Este material é uma explicação original em pt-BR, organizada pelo tema da lição 5 do módulo 7 do curso. O texto não reproduz a redação da página-fonte.


## Versão Markdown

Para consultar esta lição em formato Markdown, abra o [README secundário](README.md), localizado nesta mesma pasta.


## Objetivos de aprendizagem

1. Explicar o propósito de Executando scripts de shell no fluxo de trabalho Linux.
2. Executar o exemplo com segurança e interpretar sua saída.
3. Adaptar o procedimento a um caso simples, validando entradas e resultados.

## Pré-requisitos

Use um terminal Linux, saiba navegar entre diretórios e confira o comando antes de executar ações que alterem arquivos ou o sistema.


## Conceitos essenciais

`chmod u+x` concede execução ao proprietário; `bash -n` verifica sintaxe sem executar; `shellcheck` identifica padrões problemáticos. `PATH` controla busca por comandos e o diretório atual não costuma estar nele por segurança.

### Ideia central

Um script pode ser executado pelo interpretador (`bash script.sh`) ou diretamente (`./script.sh`) quando tem shebang e permissão executável. O método escolhido determina qual interpretador e ambiente são usados.


## Exemplo 1: executing shell scripts

O exemplo está salvo em `scripts/examples/1_executing_shell_scripts_example.sh`. Ele foi pensado para ser executado localmente e, quando precisa criar arquivos, usa uma área temporária.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
script_file="$temp_root/check.sh"
printf '#!/usr/bin/env bash\nset -euo pipefail\nprintf "ok\\n"\n' > "$script_file"
bash -n "$script_file"
chmod u+x "$script_file"
"$script_file"
```

Execute a partir desta pasta com:

```bash
bash scripts/examples/1_executing_shell_scripts_example.sh
```

### Exemplo 2: validate syntax and execute

Arquivo: `scripts/examples/2_executing_shell_scripts_validate_syntax_and_execute.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf '#!/usr/bin/env bash\nprintf \"ok\\n\"\n' > "$temp_root/check.sh"; bash -n "$temp_root/check.sh"; bash "$temp_root/check.sh"
```

Execute com `bash scripts/examples/2_executing_shell_scripts_validate_syntax_and_execute.sh`.

### Exemplo 3: validate syntax and execute validate result

Arquivo: `scripts/examples/3_executing_shell_scripts_validate_syntax_and_execute_validate_result.sh`. Este exemplo complementar demonstra outra aplicação do tópico.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf '#!/usr/bin/env bash\nprintf \"ok\\n\"\n' > "$temp_root/check.sh"; bash -n "$temp_root/check.sh"; bash "$temp_root/check.sh"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/examples/3_executing_shell_scripts_validate_syntax_and_execute_validate_result.sh`.

## Atividade 1: tarefa principal: executing shell scripts

Crie um script, valide-o com `bash -n`, torne-o executável e execute-o por caminho relativo explícito.

Antes de executar, identifique as entradas, os arquivos ou processos afetados e o resultado esperado. Compare o resultado com os critérios abaixo:

- A tarefa deve terminar sem alterar dados fora da área de teste.
- A saída deve permitir confirmar o resultado, não apenas indicar que o comando foi iniciado.
- Erros ou entradas inválidas devem ser percebidos e tratados.


## Solução comentada

A implementação de referência está em `scripts/activity_solution/1_executing_shell_scripts_activity_solution.sh`. Leia-a, execute-a e adapte-a; não a rode com privilégios administrativos.

```bash
#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail
temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT
script_file="$temp_root/hello.sh"
printf '#!/usr/bin/env bash\nset -euo pipefail\nprintf "executado\\n"\n' > "$script_file"
bash -n "$script_file"
chmod u+x "$script_file"
"$script_file"
```

Execute com:

```bash
bash scripts/activity_solution/1_executing_shell_scripts_activity_solution.sh
```

### Atividade 2: validate syntax and execute

Adicione uma variação ao script com entrada opcional e saída previsível.

Solução de referência: `scripts/activity_solution/2_executing_shell_scripts_activity_validate_syntax_and_execute.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf '#!/usr/bin/env bash\nprintf \"ok\\n\"\n' > "$temp_root/check.sh"; bash -n "$temp_root/check.sh"; bash "$temp_root/check.sh"
```

Execute com `bash scripts/activity_solution/2_executing_shell_scripts_activity_validate_syntax_and_execute.sh`.

### Atividade 3: validate syntax and execute validate result

Valide uma condição de erro e garanta limpeza de recursos temporários.

Solução de referência: `scripts/activity_solution/3_executing_shell_scripts_activity_validate_syntax_and_execute_validate_result.sh`.

```bash
#!/usr/bin/env bash
set -euo pipefail

temp_root=$(mktemp -d); trap 'rm -rf -- "$temp_root"' EXIT; printf '#!/usr/bin/env bash\nprintf \"ok\\n\"\n' > "$temp_root/check.sh"; bash -n "$temp_root/check.sh"; bash "$temp_root/check.sh"
printf "\nValidation: command completed.\n"
```

Execute com `bash scripts/activity_solution/3_executing_shell_scripts_activity_validate_syntax_and_execute_validate_result.sh`.

## Verificação e cuidados

Nunca execute um script desconhecido antes de revisar conteúdo, origem e efeitos colaterais.

Para depurar, execute com `bash -x scripts/examples/1_executing_shell_scripts_example.sh` e observe cada expansão. Não use `sudo` para contornar erros sem compreender a causa. Em comandos destrutivos, pratique somente em diretório temporário.


## Referências

[1] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics-1781031817870?module=7&lesson=5>.
Roadmap.sh.
Acessado em: 09/10/2026.

[2] GNU PROJECT.
**Bash reference manual**.
Disponível em: <https://www.gnu.org/software/bash/manual/bash.html>.
Documentação técnica.
Acessado em: 09/10/2026.

