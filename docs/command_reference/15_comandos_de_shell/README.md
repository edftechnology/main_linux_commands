# 15. Comandos de _Shell_

Este README secundário reúne notas de consulta e encaminha para documentação mais detalhada. Os links internos usam caminhos relativos e funcionam no GitHub e em editores Markdown.

## Itens desta tabela

### 1. `alias [alias]='[command]'`

- Expansão/origem: —
- Descrição: Criar um alias para comando
- Em inglês: Create command alias
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 2. `at [hh:mm]`

- Expansão/origem: —
- Descrição: Agendar um trabalho
- Em inglês: Schedule a job
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 3. `cp [source] [dest]`

- Expansão/origem: copy
- Descrição: Copiar arquivos ou diretórios
- Em inglês: Copy files or directories
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 4. `diff [file1] [file2]`

- Expansão/origem: difference
- Descrição: Comparar arquivos
- Em inglês: Compare files
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 5. `history`

- Expansão/origem: —
- Descrição: Imprimir histórico de comandos
- Em inglês: Print command history
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 6. `jobs`

- Expansão/origem: —
- Descrição: Mostrar trabalhos atuais e seu status
- Em inglês: Display current jobs & status
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 7. `ln [target] [link_name]`

- Expansão/origem: link
- Descrição: Criar links
- Em inglês: Create links
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 8. `locate [pattern]`

- Expansão/origem: —
- Descrição: Localizar arquivos
- Em inglês: Locate files
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 9. `man [command]`

- Expansão/origem: —
- Descrição: Exibir manual de comando
- Em inglês: Display command manual
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 10. `mv [source] [dest]`

- Expansão/origem: move
- Descrição: Mover ou renomear arquivos
- Em inglês: Move or rename files
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 11. `nano [file]`

- Expansão/origem: —
- Descrição: Abrir um editor de texto
- Em inglês: Open a text editor
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 12. `rm [file]`

- Expansão/origem: remove
- Descrição: Remover arquivos
- Em inglês: Remove files
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 13. `rmdir [dir]`

- Expansão/origem: —
- Descrição: Remover diretórios vazios
- Em inglês: Remove empty directories
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 14. `sed 's/old/new/' [file]`

- Expansão/origem: stream editor
- Descrição: Buscar e substituir
- Em inglês: Search and replace
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 15. `sleep [interval] && [command]`

- Expansão/origem: —
- Descrição: Adiar execução de comando
- Em inglês: Postpone command execution
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 16. `tail [file]`

- Expansão/origem: —
- Descrição: Mostrar as últimas linhas de um arquivo
- Em inglês: Show last lines of a file
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 17. `tee [file]`

- Expansão/origem: T (formato da letra)
- Descrição: Enviar saída para arquivo e terminal
- Em inglês: Write output to file and terminal
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 18. `touch [file]`

- Expansão/origem: —
- Descrição: Criar arquivo vazio
- Em inglês: Create empty file
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 19. `unalias`

- Expansão/origem: —
- Descrição: Remover um alias
- Em inglês: Remove an alias
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 20. `vi [file]`

- Expansão/origem: —
- Descrição: Abrir um editor de texto
- Em inglês: Open a text editor
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 21. `watch -n [interval] [command]`

- Expansão/origem: —
- Descrição: Definir intervalo para executar um comando
- Em inglês: Set interval to run a command
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 22. `awk -f [program.awk] [file]`

- Expansão/origem: Aho, Weinberger e Kernighan
- Descrição: Buscar e manipular padrões
- Em inglês: Pattern scanning and processing
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 23. `jed [file]`

- Expansão/origem: —
- Descrição: Abrir um editor de texto
- Em inglês: Open a text editor
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

## Como consultar documentação local

Use `man nome_do_comando` para abrir a página de manual instalada. Para comandos que oferecem essa opção, `nome_do_comando --help` mostra um resumo de uso. Confirme a disponibilidade e as opções na sua distribuição antes de executar comandos administrativos ou destrutivos.

## Comandos acrescentados da referência GeeksforGeeks

Estes itens estavam no PDF consultado e não apareciam como comandos na tabela principal. Consulte também `man comando` ou `comando --help` quando disponível.

### `more [file]`

- Expansão/origem: pager command.
- Descrição: Exibir um arquivo de texto uma tela por vez.
- Em inglês: Display a text file one screen at a time.

### `less [file]`

- Expansão/origem: pager command.
- Descrição: Consultar texto com navegação para frente e para trás.
- Em inglês: View text with forward and backward navigation.

### `patch [file] [diff]`

- Expansão/origem: patch utility.
- Descrição: Aplicar um arquivo diff para atualizar um arquivo-alvo.
- Em inglês: Apply a diff file to update a target file.

### `vim [file]`

- Expansão/origem: Vi Improved.
- Descrição: Editar arquivos de texto em um editor modal de terminal.
- Em inglês: Edit text files in a modal terminal editor.

### `emacs [file]`

- Expansão/origem: Editor MACroS.
- Descrição: Editar texto em um editor extensível e personalizável.
- Em inglês: Edit text in a customizable extensible editor.

### `ed [file]`

- Expansão/origem: standard line editor.
- Descrição: Editar texto por meio de uma interface orientada a linhas.
- Em inglês: Edit text using a line-oriented interface.

## Comandos adicionais do PDF GeeksforGeeks

### `ls [directory]`

- Expansão/origem: list.
- Mais informações: Listar conteúdo de diretório; `-a` inclui entradas ocultas.
- Consulte `man` ou `--help` quando disponível.

### `mkdir [directory]`

- Expansão/origem: make directory.
- Mais informações: Criar diretório; `-p` também cria diretórios-pai ausentes.
- Consulte `man` ou `--help` quando disponível.

### `head [file]`

- Expansão/origem: head.
- Mais informações: Exibir as primeiras linhas; `-n` define a quantidade.
- Consulte `man` ou `--help` quando disponível.

### `grep [pattern] [file]`

- Expansão/origem: grep.
- Mais informações: Pesquisar linhas correspondentes; `-i`, `-n` e `-F` ajustam a busca.
- Consulte `man` ou `--help` quando disponível.

### `gcc [source] -o [program]`

- Expansão/origem: GNU Compiler Collection.
- Mais informações: Compilar código C; revise o código-fonte e o destino do executável.
- Consulte `man` ou `--help` quando disponível.

### `make`

- Expansão/origem: make.
- Mais informações: Executar as regras de build definidas no Makefile do projeto.
- Consulte `man` ou `--help` quando disponível.

### `./program`

- Expansão/origem: caminho relativo.
- Mais informações: Executar um binário no diretório atual; o prefixo `./` evita depender do `PATH`.
- Consulte `man` ou `--help` quando disponível.

### `python3 [script.py]`

- Expansão/origem: Python 3.
- Mais informações: Executar um programa Python 3 pelo interpretador.
- Consulte `man` ou `--help` quando disponível.

### `git status`

- Expansão/origem: Git.
- Mais informações: Inspecionar alterações locais antes de adicionar, commitar ou publicar.
- Consulte `man` ou `--help` quando disponível.
