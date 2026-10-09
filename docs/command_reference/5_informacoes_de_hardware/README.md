# 5. Informações de Hardware

Este README secundário reúne notas de consulta e encaminha para documentação mais detalhada. Os links internos usam caminhos relativos e funcionam no GitHub e em editores Markdown.

## Itens desta tabela

### 1. `cat /proc/cpuinfo`

- Expansão/origem: concatenate
- Descrição: Mostrar informações da CPU
- Em inglês: Show CPU information
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 2. `dmesg`

- Expansão/origem: —
- Descrição: Mostrar mensagens de inicialização
- Em inglês: Show bootup messages
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 3. `dmidecode`

- Expansão/origem: —
- Descrição: Mostrar informações de hardware da BIOS
- Em inglês: Show BIOS hardware info
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 4. `free -h`

- Expansão/origem: —
- Descrição: Mostrar memória livre e usada
- Em inglês: Show free and used memory
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 5. `lsblk`

- Expansão/origem: list block devices
- Descrição: Informações de dispositivos de bloco
- Em inglês: Block devices info
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 6. `lshw`

- Expansão/origem: —
- Descrição: Informações de configuração de hardware
- Em inglês: Hardware configuration info
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 7. `lsusb -tv`

- Expansão/origem: —
- Descrição: Diagrama em árvore dos dispositivos USB
- Em inglês: Tree-diagram of USB devices
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 8. `neofetch`

- Expansão/origem: —
- Descrição: Mostrar informações do SO e hardware
- Em inglês: Display OS & hardware info
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 9. `hdparm -i /dev/[disk]`

- Expansão/origem: —
- Descrição: Mostrar informações de dados do disco
- Em inglês: Show disk data info
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 10. `hdparm -Tt /dev/[disk]`

- Expansão/origem: —
- Descrição: Teste de velocidade de leitura do disco
- Em inglês: Disk read speed test
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 11. `badblocks -s /dev/[disk]`

- Expansão/origem: —
- Descrição: Teste de blocos ilegíveis
- Em inglês: Unreadable blocks test
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

## Como consultar documentação local

Use `man nome_do_comando` para abrir a página de manual instalada. Para comandos que oferecem essa opção, `nome_do_comando --help` mostra um resumo de uso. Confirme a disponibilidade e as opções na sua distribuição antes de executar comandos administrativos ou destrutivos.
