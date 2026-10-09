# Tabela resumo dos diretórios essenciais

Este README secundário reúne notas de consulta e encaminha para documentação mais detalhada. Os links internos usam caminhos relativos e funcionam no GitHub e em editores Markdown.

## Itens desta tabela

### 1. `/`

- Descrição: Diretório raiz (*root*), o topo da hierarquia do sistema de arquivos.
- Exemplo/observação: Todos os caminhos absolutos começam aqui.

### 2. `/bin`

- Descrição: Binários essenciais para os usuários (comandos).
- Exemplo/observação: `ls`, `cp`, `mv`, `rm`

### 3. `/boot`

- Descrição: Arquivos de inicialização (*boot loader*), incluindo kernel, initrd e configurações do carregador de boot.
- Exemplo/observação: Imagem do kernel, configuração do GRUB

### 4. `/dev`

- Descrição: Arquivos de dispositivos (*device files*), representando dispositivos de hardware.
- Exemplo/observação: `/dev/sda`, `/dev/tty`

### 5. `/etc`

- Descrição: Arquivos de configuração globais do sistema.
- Exemplo/observação: `/etc/network/interfaces`, `/etc/passwd`, `/etc/ssh/sshd_config`

### 6. `/home`

- Descrição: Diretórios pessoais dos usuários.
- Exemplo/observação: `/home/joao`, `/home/maria`

### 7. `/lib`

- Descrição: Bibliotecas compartilhadas essenciais do sistema.
- Exemplo/observação: `libc.so`

### 8. `/media`

- Descrição: Ponto de montagem para mídias removíveis (pendrives, CDs, DVDs etc.).
- Exemplo/observação: `/media/cdrom`, `/media/usb`

### 9. `/mnt`

- Descrição: Ponto de montagem temporário.
- Exemplo/observação: Montagem de um compartilhamento de rede em `/mnt`

### 10. `/opt`

- Descrição: Software opcional de terceiros.
- Exemplo/observação: Instalação de uma suíte de software em `/opt`

### 11. `/proc`

- Descrição: Informações sobre processos e o kernel (sistema de arquivos virtual).
- Exemplo/observação: `/proc/cpuinfo`, `/proc/[pid]`

### 12. `/root`

- Descrição: Diretório pessoal do usuário administrador (*root*).
- Exemplo/observação: `/root/.bashrc`

### 13. `/sbin`

- Descrição: Binários de administração do sistema (comandos administrativos).
- Exemplo/observação: `fdisk`, `shutdown`

### 14. `/srv`

- Descrição: Dados utilizados por serviços do sistema, como servidores web e FTP.
- Exemplo/observação: `/srv/www`

### 15. `/tmp`

- Descrição: Arquivos temporários (geralmente removidos após reinicialização).
- Exemplo/observação: Arquivos temporários criados por aplicações

### 16. `/usr`

- Descrição: Programas, bibliotecas e utilitários de uso geral.
- Exemplo/observação: `/usr/bin/gcc`, `/usr/share/doc`

### 17. `/var`

- Descrição: Dados variáveis do sistema, como logs, filas e arquivos temporários persistentes.
- Exemplo/observação: `/var/log`, `/var/spool/mail`

## Como consultar documentação local

Use `man nome_do_comando` para abrir a página de manual instalada. Para comandos que oferecem essa opção, `nome_do_comando --help` mostra um resumo de uso. Confirme a disponibilidade e as opções na sua distribuição antes de executar comandos administrativos ou destrutivos.
