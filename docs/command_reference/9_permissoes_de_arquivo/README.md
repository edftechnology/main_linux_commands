# 9. Permissões de Arquivo

Este README secundário reúne notas de consulta e encaminha para documentação mais detalhada. Os links internos usam caminhos relativos e funcionam no GitHub e em editores Markdown.

## Itens desta tabela

### 1. `chmod 755 [file]`

- Expansão/origem: change mode
- Descrição: Permissão total para o proprietário; permissão de leitura para outros
- Em inglês: Full permission to owner; read permissions for others
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 2. `chmod 766 [file]`

- Expansão/origem: change mode
- Descrição: Permissão total para o proprietário; leitura e escrita para outros
- Em inglês: Full permission to owner; read and write for others
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 3. `chmod 777 [file]`

- Expansão/origem: change mode
- Descrição: Permissão total de leitura, escrita e execução para todos
- Em inglês: Full read, write, execute permissions to everyone
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 4. `chown [user][file]`

- Expansão/origem: change owner
- Descrição: Mudar a propriedade do arquivo
- Em inglês: Change file ownership
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 5. `chown [user][group][file]`

- Expansão/origem: change owner
- Descrição: Mudar o proprietário do arquivo e grupo
- Em inglês: Change file owner and group
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

## Como consultar documentação local

Use `man nome_do_comando` para abrir a página de manual instalada. Para comandos que oferecem essa opção, `nome_do_comando --help` mostra um resumo de uso. Confirme a disponibilidade e as opções na sua distribuição antes de executar comandos administrativos ou destrutivos.
