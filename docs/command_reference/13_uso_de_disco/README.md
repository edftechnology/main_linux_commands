# 13. Uso de Disco

Este README secundário reúne notas de consulta e encaminha para documentação mais detalhada. Os links internos usam caminhos relativos e funcionam no GitHub e em editores Markdown.

## Itens desta tabela

### 1. `fdisk -l`

- Expansão/origem: fixed disk
- Descrição: Tipos e tamanhos de partições de disco
- Em inglês: Disk partition types and sizes
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 2. `df -h`

- Expansão/origem: disk free
- Descrição: Mostrar espaço livre no sistema
- Em inglês: Show free space on system
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 3. `du -ah`

- Expansão/origem: disk usage
- Descrição: Mostrar uso do disco para todos os arquivos
- Em inglês: Show disk usage for all files
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 4. `du -sh`

- Expansão/origem: disk usage
- Descrição: Mostrar uso do disco para o diretório atual
- Em inglês: Show disk usage for current directory
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 5. `findmnt`

- Expansão/origem: —
- Descrição: Mostrar ponto de montagem alvo
- Em inglês: Show target mount point
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 6. `mount [device][mount point]`

- Expansão/origem: mount
- Descrição: Montar um dispositivo
- Em inglês: Mount a device
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

## Como consultar documentação local

Use `man nome_do_comando` para abrir a página de manual instalada. Para comandos que oferecem essa opção, `nome_do_comando --help` mostra um resumo de uso. Confirme a disponibilidade e as opções na sua distribuição antes de executar comandos administrativos ou destrutivos.
