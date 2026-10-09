# 10. _Login_ SSH

Este README secundário reúne notas de consulta e encaminha para documentação mais detalhada. Os links internos usam caminhos relativos e funcionam no GitHub e em editores Markdown.

## Itens desta tabela

### 1. `ssh [user]@[host]`

- Expansão/origem: Secure Shell
- Descrição: Conectar ao host como usuário
- Em inglês: Connect to host as user
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 2. `ssh [host]`

- Expansão/origem: Secure Shell
- Descrição: Conectar ao host via porta 22
- Em inglês: Connect to host via port 22
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 3. `telnet [host]`

- Expansão/origem: —
- Descrição: Conectar ao Telnet via porta 23
- Em inglês: Connect to Telnet via port 23
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 4. `ssh -p [port][user]@[host]`

- Expansão/origem: Secure Shell
- Descrição: Usar uma porta não padrão
- Em inglês: Use a non-default port
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

## Como consultar documentação local

Use `man nome_do_comando` para abrir a página de manual instalada. Para comandos que oferecem essa opção, `nome_do_comando --help` mostra um resumo de uso. Confirme a disponibilidade e as opções na sua distribuição antes de executar comandos administrativos ou destrutivos.
