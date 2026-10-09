# 12. Transferência de Arquivos

Este README secundário reúne notas de consulta e encaminha para documentação mais detalhada. Os links internos usam caminhos relativos e funcionam no GitHub e em editores Markdown.

## Itens desta tabela

### 1. `scp [file.txt][server:/tmp]`

- Expansão/origem: secure copy
- Descrição: Transferir um arquivo de forma segura
- Em inglês: Securely transfer a file
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

### 2. `rsync -a /location/ /backup/`

- Expansão/origem: remote sync
- Descrição: Sincronizar os conteúdos de uma localização com o diretório de _backup_
- Em inglês: Sync the contents of a location with the backup directory
- Ajuda local: consulte `man comando` ou `comando --help` quando disponível.

## Como consultar documentação local

Use `man nome_do_comando` para abrir a página de manual instalada. Para comandos que oferecem essa opção, `nome_do_comando --help` mostra um resumo de uso. Confirme a disponibilidade e as opções na sua distribuição antes de executar comandos administrativos ou destrutivos.
