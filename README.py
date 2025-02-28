#!/usr/bin/env python
# coding: utf-8

# # Como configurar/instalar/usar o `Linux Cheat Sheet` no `Linux Ubuntu`
# 
# ## Resumo
# 
# Neste documento estão contidos os principais comandos e configurações para configurar/instalar/usar o `Linux Cheat Sheet` no `Linux Ubuntu`.
# 
# ## _Abstract_
# 
# _This document contains the main commands and settings for configuring/installing/using the `Linux Cheat Sheet` on `Linux Ubuntu`._
# 

# ## Descrição [2]
# 
# ### `Linux Cheat Sheet`
# 
# O "Linux Cheat Sheet" é um recurso prático e conciso que oferece uma rápida referência aos comandos e atalhos mais comuns do sistema operacional Linux. Organizado de forma clara e acessível, geralmente em formato de tabela ou lista, este documento é amplamente utilizado por administradores de sistemas, desenvolvedores e usuários do Linux para agilizar tarefas, solucionar problemas e melhorar a eficiência na linha de comando.
# 

# ## 1. Como configurar/instalar/usar o `Linux Cheat Sheet` no `Linux Ubuntu` [1][3]
# 
# Para configurar/instalar/usar o `Linux Cheat Sheet` no `Linux Ubuntu`, você pode seguir estes passos:
# 
# 1. Abra o `Terminal Emulator`. Você pode fazer isso pressionando: `Ctrl + Alt + T`

# 2. Certifique-se de que seu sistema esteja limpo e atualizado.
# 
#     2.1 Limpar o `cache` do gerenciador de pacotes APT. Especificamente, ele remove todos os arquivos de pacotes (`.deb`) baixados pelo APT e armazenados em `/var/cache/apt/archives/`. Digite o seguinte comando: `sudo apt clean` 
#     
#     2.2 Remover pacotes `.deb` antigos ou duplicados do cache local. É útil para liberar espaço, pois remove apenas os pacotes que não podem mais ser baixados (ou seja, versões antigas de pacotes que foram atualizados). Digite o seguinte comando: `sudo apt autoclean`
# 
#     2.3 Remover pacotes que foram automaticamente instalados para satisfazer as dependências de outros pacotes e que não são mais necessários. Digite o seguinte comando: `sudo apt autoremove -y`
# 
#     2.4 Buscar as atualizações disponíveis para os pacotes que estão instalados em seu sistema. Digite o seguinte comando e pressione `Enter`: `sudo apt update -y`
# 
#     2.5 Para ver a lista de pacotes a serem atualizados, digite o seguinte comando e pressione `Enter`:  `sudo apt list --upgradable`
# 
#     2.6 Realmente atualizar os pacotes instalados para as suas versões mais recentes, com base na última vez que você executou `sudo apt update -y`. Digite o seguinte comando e pressione `Enter`: `sudo apt full-upgrade -y`
# 
#     2.7 Remover pacotes que foram automaticamente instalados para satisfazer as dependências de outros pacotes e que não são mais necessários. Digite o seguinte comando: `sudo apt autoremove -y`
# 
#     2.8 Remover pacotes `.deb` antigos ou duplicados do cache local. É útil para liberar espaço, pois remove apenas os pacotes que não podem mais ser baixados (ou seja, versões antigas de pacotes que foram atualizados). Digite o seguinte comando: `sudo apt autoclean`

# | Comando   | Descrição                                                    |
# |:---------:|:-------------------------------------------------------------|
# | `cd`      | Alterar diretório                                            |
# | `rmdir`   | Remover um diretório vazio                                   |
# | `tail`    | Exibir as últimas linhas de um arquivo                       |
# | `chmod`   | Alterar permissões de arquivos e diretórios                  |
# | `umount`  | Desmontar um sistema de arquivos                             |
# | `ls`      | Listar conteúdo do diretório                                 |
# | `cut`     | Recortar seções de um arquivo                                |
# | `sort`    | Ordenar linhas de um arquivo                                 |
# | `chown`   | Alterar o proprietário de um arquivo ou diretório            |
# | `ping`    | Testar conectividade com um host de rede                     |
# | `pwd`     | Imprimir diretório de trabalho                               |
# | `gzip`    | Comprimir ou descomprimir arquivos usando gzip               |
# | `uniq`    | Remover linhas duplicadas                                    |
# | `chgrp`   | Alterar o grupo de propriedade de um arquivo ou diretório    |
# | `ssh`     | Conexão remota segura e execução de comando                  |
# | `cat`     | Concatenar e exibir arquivos                                 |
# | `gunzip`  | Descomprimir arquivos comprimidos com gzip                   |
# | `ps`      | Listar processos em execução                                 |
# | `scp`     | Copiar arquivos de forma segura entre hosts                  |
# | `rsync`   | Sincronização remota de arquivos e diretórios                |
# | `touch`   | Criar um arquivo vazio                                       |
# | `find`    | Encontrar arquivos e diretórios que correspondam a um padrão |
# | `grep`    | Buscar por um padrão em um arquivo                           |
# | `top`     | Exibir informações de uso do sistema e processos             |
# | `kill`    | Enviar um sinal para terminar um processo                    |
# | `cp`      | Copiar arquivos e diretórios                                 |
# | `awk`     | Análise e processamento de padrões                           |
# | `wc`      | Contar linhas, palavras e caracteres em um arquivo           |
# | `du`      | Exibir uso de disco de arquivos e diretórios                 |
# | `wget`    | Recuperar arquivos da internet usando protocolos de rede     |
# | `mv`      | Mover ou renomear arquivos e diretórios                      |
# | `sed`     | Editor de fluxo para filtrar e transformar texto             |
# | `diff`    | Comparar dois arquivos linha por linha                       |
# | `df`      | Exibir espaço livre em disco no sistema de arquivos          |
# | `ftp`     | Cliente de Protocolo de Transferência de Arquivos            |
# | `rm`      | Remover arquivos e diretórios                                |
# | `head`    | Exibir as primeiras linhas de um arquivo                     |
# | `patch`   | Aplicar um patch a um arquivo                                |
# | `mount`   | Montar um sistema de arquivos                                |
# | `sftp`    | Cliente de Protocolo de Transferência de Arquivos Seguro     |
# 

# ### 1.1 Código completo para configurar/instalar/usar
# 
# Para configurar/instalar/usar o `Linux Cheat Sheet` no `Linux Ubuntu` sem precisar digitar linha por linha, você pode seguir estas etapas:
# 
# 1. Abra o terminal. Você pode fazer isso pressionando: `Ctrl + Alt + T`
# 
# 2. Digite o seguinte comando e pressione `Enter`:
# 
#     ```
#     NÃO há.
#     ```
# 

# ## 2. Rede
# 
# | Comando        | Descrição em Inglês                 | Descrição em Português                      |
# |----------------|-------------------------------------|---------------------------------------------|
# | `dig -x [ip]`  | IP address reverse lookup          | Consulta reversa de endereço IP             |
# | `dig -x [host]`| Domain reverse lookup              | Consulta reversa de domínio                 |
# | `dig [domain]` | Show domain's DNS info             | Mostrar informações de DNS do domínio       |
# | `get [file]`   | Download a file from remote to local| Baixar um arquivo de remoto para local     |
# | `host [domain]`| IP lookup for a domain             | Consulta de IP para um domínio              |
# | `curl -O [file_url]`| Download a file from url      | Baixar um arquivo de uma URL                |
# | `ifconfig`     | Show all network interfaces        | Mostrar todas as interfaces de rede         |
# | `ip addr show` | Show IP addresses                  | Mostrar endereços IP                        |
# | `ip address add [ip]`| Assign IP address to interface| Atribuir endereço IP à interface            |
# | `netstat -pntlu`| Show active listening ports       | Mostrar portas ativas de escuta             |
# | `nslookup [domain]`| Network information            | Informação de rede                          |
# | `ping [hostname]`| Check network status             | Verificar status da rede                    |
# | `put [file]`   | Upload file from local to remote computer| Enviar arquivo de local para remoto     |
# | `quit`         | Logout                             | Sair                                         |
# | `wget [file_url]`| Download a file from url         | Baixar um arquivo de uma URL                |
# | `whois [domain]`| Show domain information           | Mostrar informações do domínio              |
# 

# ## 3. Comandos de usuários e grupos
# 
# | Comando         | Descrição em Inglês            | Descrição em Português                 |
# |-----------------|--------------------------------|----------------------------------------|
# | `adduser [user]`| Add a new user                 | Adicionar um novo usuário              |
# | `chgrp [group] [directory]`| Change directory group | Mudar grupo de diretório          |
# | `groupadd [group]`| Add a new group              | Adicionar um novo grupo                |
# | `id`            | Show active user details       | Mostrar detalhes do usuário ativo      |
# | `last`          | Show last system logins        | Mostrar últimas entradas no sistema    |
# | `passwd [username]`| Change the password for the user | Mudar a senha do usuário        |
# | `userdel [user]`| Delete a user                  | Excluir um usuário                     |
# | `usermod`       | Modify user information        | Modificar informações de um usuário    |
# | `usermod -aG [group] [user]` | Add user to group | Adicionar usuário a um grupo         |
# | `w`             | Show logged users and activity | Mostrar usuários logados e atividade   |
# | `who`           | Show who is logged in          | Mostrar quem está logado               |
# 

# ## 4. Comandos de Navegação de Diretórios
# 
# | Comando         | Descrição em Inglês             | Descrição em Português                |
# |-----------------|---------------------------------|---------------------------------------|
# | `cd`            | Move up one level               | Subir um nível                        |
# | `cd`            | Change directory to $HOME       | Mudar diretório para o $HOME          |
# | `cd [location]` | Change to specified directory   | Mudar para o diretório especificado   |
# 

# ## 5. Informações de Hardware
# 
# | Comando          | Descrição em Inglês               | Descrição em Português                  |
# |------------------|-----------------------------------|-----------------------------------------|
# | `cat /proc/cpuinfo`| Show CPU information            | Mostrar informações da CPU              |
# | `dmesg`          | Show bootup messages              | Mostrar mensagens de inicialização      |
# | `dmidecode`      | Show BIOS hardware info           | Mostrar informações de hardware da BIOS |
# | `free -h`        | Show free and used memory         | Mostrar memória livre e usada           |
# | `lsblk`          | Block devices info                | Informações de dispositivos de bloco    |
# | `lshw`           | Hardware configuration info       | Informações de configuração de hardware |
# | `lsusb -tv`      | Tree-diagram of USB devices       | Diagrama em árvore dos dispositivos USB |
# | `neofetch`       | Display OS & hardware info        | Mostrar informações do SO e hardware    |
# | `hdparm -i /dev/[disk]`| Show disk data info         | Mostrar informações de dados do disco   |
# | `hdparm -Tt /dev/[disk]`| Disk read speed test       | Teste de velocidade de leitura do disco |
# | `badblocks -s /dev/[disk]`| Unreadable blocks test   | Teste de blocos ilegíveis               |
# 

# ## 6. Compressão de Arquivos
# 
# | Comando               | Descrição em Inglês                 | Descrição em Português                  |
# |-----------------------|-------------------------------------|-----------------------------------------|
# | `gzip [file]`         | Create a gz compressed file         | Criar um arquivo comprimido gz          |
# | `tar xf [file.tar]`   | Extract archived file               | Extrair arquivo arquivado               |
# | `zip`/`unzip`         | Package & compress files            | Empacotar e comprimir arquivos          |
# | `tar cf [file.tar] [file]`| Create a tar file from a file  | Criar um arquivo tar a partir de um arquivo|
# | `tar czf [file.tar.gz]`| Create a gzip tar file            | Criar um arquivo tar gzip               |
# 

# ## 7. Instalação de Pacotes
# 
# | Comando                     | Descrição em Inglês                    | Descrição em Português                             |
# |-----------------------------|----------------------------------------|----------------------------------------------------|
# | `apt-get`                   | Search for and install software packages | Pesquisar e instalar pacotes de software          |
# | `apt install [package]`     | Install a package with APT              | Instalar um pacote com APT                         |
# | `dnf install [package.rpm]` | Install a package with DNF              | Instalar um pacote com DNF                         |
# | `rpm -e [package.rpm]`      | Remove an rpm package                   | Remover um pacote rpm                              |
# | `rpm -ivh [package.rpm]`    | Install a local rpm package             | Instalar um pacote rpm local                       |
# | `yum info [package]`        | Package info & summary                  | Informação e resumo do pacote                      |
# | `yum install [package]`     | Install a package with YUM              | Instalar um pacote com YUM                         |
# | `yum search [package]`      | Find a package by a keyword             | Encontrar um pacote por uma palavra-chave          |
# 

# ## 8. Gerenciamento de Sistema
# 
# | Comando                | Descrição em Inglês                   | Descrição em Português                              |
# |------------------------|---------------------------------------|-----------------------------------------------------|
# | `cat`                  | Show current day and month            | Mostrar dia e mês atuais                            |
# | `date`                 | Show current time and date            | Mostrar hora e data atuais                          |
# | `finger [username]`    | Show user information                 | Mostrar informações do usuário                      |
# | `hostname`             | Show system hostname                  | Mostrar nome do host do sistema                     |
# | `hostname -I`          | Show System IP address                | Mostrar endereço IP do sistema                      |
# | `last reboot`          | Show reboot history                   | Mostrar histórico de reinicialização                |
# | `modprobe [module-name]`| Add a new kernel module              | Adicionar um novo módulo do kernel                  |
# | `shutdown [h:mm]`      | Schedule a system shut down           | Agendar desligamento do sistema                     |
# | `shutdown now`         | Shut down immediately                 | Desligar imediatamente                              |
# | `ulimit [tags][limit]` | Manage the system clock               | Gerenciar o relógio do sistema                      |
# | `uname -a`             | Show kernel release info              | Mostrar informações de lançamento do kernel         |
# | `uname -r`             | Show system information               | Mostrar informações do sistema                      |
# | `uptime`               | Show uptime length/avg load           | Mostrar tempo de atividade/carga média              |
# | `whoami`               | Show the current user                 | Mostrar o usuário atual                             |
# 

# ## 9. Permissões de Arquivo
# 
# | Comando          | Descrição em Inglês                             | Descrição em Português                                   |
# |------------------|-------------------------------------------------|----------------------------------------------------------|
# | `chmod 755 [file]` | Full permission to owner; read permissions for others | Permissão total para o proprietário; permissão de leitura para outros |
# | `chmod 766 [file]` | Full permission to owner; read and write for others  | Permissão total para o proprietário; leitura e escrita para outros  |
# | `chmod 777 [file]` | Full read, write, execute permissions to everyone  | Permissão total de leitura, escrita e execução para todos           |
# | `chown [user][file]` | Change file ownership                            | Mudar a propriedade do arquivo                                     |
# | `chown [user][group][file]` | Change file owner and group                    | Mudar o proprietário do arquivo e grupo                            |
# 

# ## 10. Login SSH
# 
# | Comando           | Descrição em Inglês                       | Descrição em Português                               |
# |-------------------|-------------------------------------------|------------------------------------------------------|
# | `ssh [user]@[host]`| Connect to host as user                  | Conectar ao host como usuário                        |
# | `ssh [host]`       | Connect to host via port 22              | Conectar ao host via porta 22                        |
# | `telnet [host]`    | Connect to Telnet via port 23            | Conectar ao Telnet via porta 23                      |
# | `ssh -p [port][user]@[host]`| Use a non-default port           | Usar uma porta não padrão                            |
# 

# ## 11. Variáveis Bash
# 
# | Comando             | Descrição em Inglês                       | Descrição em Português                                 |
# |---------------------|-------------------------------------------|--------------------------------------------------------|
# | `declare [variable]=[value]` | Declare a Bash variable          | Declarar uma variável Bash                             |
# | `echo $[variable]`  | Display value of the variable             | Exibir valor da variável                               |
# | `export [variable]` | Export a Bash variable                    | Exportar uma variável Bash                             |
# | `let [variable]=[value]` | Assign integer value to var          | Atribuir valor inteiro à variável                      |
# | `set`               | List variables and functions              | Listar variáveis e funções                             |
# 

# ## 12. Transferência de Arquivos
# 
# | Comando         | Descrição em Inglês                | Descrição em Português                                 |
# |-----------------|------------------------------------|--------------------------------------------------------|
# | `scp [file.txt][server:/tmp]` | Securely transfer a file   | Transferir um arquivo de forma segura                  |
# | `rsync -a /location/ /backup/` | Sync the contents of a location with the backup directory | Sincronizar os conteúdos de uma localização com o diretório de backup |
# 

# ## 13. Uso de Disco
# 
# | Comando        | Descrição em Inglês                        | Descrição em Português                                   |
# |----------------|--------------------------------------------|----------------------------------------------------------|
# | `fdisk -l`     | Disk partition types and sizes             | Tipos e tamanhos de partições de disco                   |
# | `df -h`        | Show free space on system                  | Mostrar espaço livre no sistema                          |
# | `du -ah`       | Show disk usage for all files              | Mostrar uso do disco para todos os arquivos              |
# | `du -sh`       | Show disk usage for current directory      | Mostrar uso do disco para o diretório atual              |
# | `findmnt`      | Show target mount point                    | Mostrar ponto de montagem alvo                           |
# | `mount [device][mount point]` | Mount a device               | Montar um dispositivo                                    |
# 

# ## 14. Processos Relacionados
# 
# | Comando          | Descrição em Inglês                           | Descrição em Português                                   |
# |------------------|-----------------------------------------------|----------------------------------------------------------|
# | `bg`             | List background processes                     | Listar processos em segundo plano                        |
# | `clear`          | Clear terminal screen                         | Limpar a tela do terminal                                |
# | `fg [job]`       | Bring job to foreground                       | Trazer trabalho para o primeiro plano                    |
# | `kill [process_id]` | Kill the process by ID                     | Matar o processo pelo ID                                 |
# | `pkill [process_name]` | Kill the process by name                | Matar o processo pelo nome                               |
# | `killall [process_name]` | Kill all processes by name           | Matar todos os processos pelo nome                        |
# | `lsof`           | List files opened by processes                | Listar arquivos abertos por processos                    |
# | `ps`             | Show active process snapshot                  | Mostrar instantâneo de processos ativos                  |
# | `pstree`         | Show processes as a tree                      | Mostrar processos em forma de árvore                     |
# | `top`            | Show all running processes                    | Mostrar todos os processos em execução                   |
# | `wait`           | Pause terminal until process completes        | Pausar terminal até que o processo seja completado       |
# | `nice`           | Start a process with a given priority         | Iniciar um processo com uma prioridade dada              |
# | `fg`             | Most recent suspended job to foreground       | Trabalho suspenso mais recente para o primeiro plano     |
# | `ps PID`         | Give the status of a particular process       | Dar o status de um processo específico                   |
# | `renice`         | Change priority of a running process          | Mudar a prioridade de um processo em execução            |
# 

# ## 15. Comandos de Shell
# 
# | Comando          | Descrição em Inglês                          | Descrição em Português                                   |
# |------------------|----------------------------------------------|----------------------------------------------------------|
# | `alias [alias]='[command]'` | Create command alias            | Criar um alias para comando                              |
# | `at [hh:mm]`     | Schedule a job                               | Agendar um trabalho                                      |
# | `history`        | Print command history                        | Imprimir histórico de comandos                           |
# | `jobs`           | Display current jobs & status                | Mostrar trabalhos atuais e seu status                    |
# | `man [command]`  | Display command manual                       | Exibir manual de comando                                 |
# | `unalias`        | Remove an alias                              | Remover um alias                                         |
# | `watch -n [interval] [command]` | Set interval to run a command | Definir intervalo para executar um comando               |
# | `sleep [interval] && [command]` | Postpone command execution   | Adiar execução de comando                                |
# 

# ## 16. Atalhos de Teclado
# 
# | Atalho           | Ação                                         |
# |------------------|----------------------------------------------|
# | `!!`             | Repeat the last command                      |
# | `exit`           | Log out of the session                       |
# | `Ctrl + C`       | Kill current process                         |
# | `Ctrl + G`       | Exit command history                         |
# | `Ctrl + K`       | Cut part of the line after the cursor         |
# | `Ctrl + O`       | Run the recalled command                     |
# | `Ctrl + R`       | Recall last command                          |
# | `Ctrl + U`       | Cut part of the line before the cursor       |
# | `Ctrl + W`       | Cut the word before the cursor               |
# | `Ctrl + Y`       | Paste from clipboard                         |
# | `Ctrl + Z`       | Stop process (can be resumed)                |
# | `Ctrl + Alt + F7`| Switch to the first graphical terminal       |
# | `Ctrl + Alt + F10`| Switch to a virtual console                 |
# 

# ## Referências
# 
# [1] OPENAI. ***Comandos Linux traduzidos.*** Disponível em: <https://chat.openai.com/c/b315251f-5bf4-48bb-8c0b-d306db412439> (texto adaptado). Acessado em: 02/04/2023 17:11.
# 
# [2] OPENAI. ***Vs code: editor popular.*** Disponível em: <https://chat.openai.com/c/b640a25d-f8e3-4922-8a3b-ed74a2657e42> (texto adaptado). Acessado em: 02/04/2024 17:10.
# 
