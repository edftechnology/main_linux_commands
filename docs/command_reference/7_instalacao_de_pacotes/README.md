# 7. Instalação de Pacotes

Este README secundário reúne notas de consulta e encaminha para documentação mais detalhada. Os links internos usam caminhos relativos e funcionam no GitHub e em editores Markdown.

## Itens desta tabela

### 1. `apt-get`

- Expansão/origem: Advanced Package Tool (get)
- Descrição: Pesquisar e instalar pacotes de software
- Em inglês: Search for and install software packages
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 2. `apt install [package]`

- Expansão/origem: —
- Descrição: Instalar um pacote com APT
- Em inglês: Install a package with APT
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 3. `dnf install [package.rpm]`

- Expansão/origem: Dandified YUM
- Descrição: Instalar um pacote com DNF
- Em inglês: Install a package with DNF
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 4. `rpm -e [package.rpm]`

- Expansão/origem: RPM Package Manager (sigla histórica)
- Descrição: Remover um pacote rpm
- Em inglês: Remove an rpm package
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 5. `rpm -ivh [package.rpm]`

- Expansão/origem: RPM Package Manager (sigla histórica)
- Descrição: Instalar um pacote rpm local
- Em inglês: Install a local rpm package
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 6. `yum info [package]`

- Expansão/origem: Yellowdog Updater, Modified
- Descrição: Informação e resumo do pacote
- Em inglês: Package info & summary
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 7. `yum install [package]`

- Expansão/origem: Yellowdog Updater, Modified
- Descrição: Instalar um pacote com YUM
- Em inglês: Install a package with YUM
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 8. `yum search [package]`

- Expansão/origem: Yellowdog Updater, Modified
- Descrição: Encontrar um pacote por uma palavra-chave
- Em inglês: Find a package by a keyword
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

## Como consultar documentação local

Use `man nome_do_comando` para abrir a página de manual instalada. Para comandos que oferecem essa opção, `nome_do_comando --help` mostra um resumo de uso. Confirme a disponibilidade e as opções na sua distribuição antes de executar comandos administrativos ou destrutivos.
