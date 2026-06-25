# Como configurar/instalar/usar o `principais comandos do Linux` no `Linux Ubuntu`

## Resumo

Neste documento estão contidos os principais comandos e configurações para configurar/instalar/usar o `principais comandos do Linux` no `Linux Ubuntu`.

## _Abstract_

_This document contains the main commands and settings for configuring/installing/using the `main Linux commands` on `Linux Ubuntu`._




## Descrição [2]

### `comandos`



### `palavra-chave`

Uma `palavra-chave` é um termo ou expressão que representa um conceito central em um determinado contexto, como programação, _marketing_ ou pesquisa. No âmbito da programação, `palavras-chave` são identificadores reservados que têm um significado específico na linguagem, como `if`, `else`, `for` e `function`, e não podem ser usados como nomes de variáveis ou funções. Em _marketing_ digital e SEO, `palavras-chave` são os termos que os usuários digitam em mecanismos de busca e são fundamentais para otimizar conteúdos e aumentar a visibilidade online. Assim, as `palavras-chave` desempenham um papel crucial na comunicação, programação e busca de informações.


## 1. Como configurar/instalar/usar o `principais comandos do Linux` no `Linux Ubuntu` [1][3]

Para configurar/instalar/usar o `principais comandos do Linux` no `Linux Ubuntu`, você pode seguir estes passos:

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```



2. Certifique-se de que seu sistema esteja limpo e atualizado.

    2.1 Limpar o `cache` do gerenciador de pacotes `apt`. Especificamente, ele remove todos os arquivos de pacotes (`.deb`) baixados pelo `apt` e armazenados em `/var/cache/apt/archives/`. Digite o seguinte comando:
    ```bash
    sudo apt clean
    ```

    2.2 Remover pacotes `.deb` antigos ou duplicados do `cache` local. É útil para liberar espaço, pois remove apenas os pacotes que não podem mais ser baixados (ou seja, versões antigas de pacotes que foram atualizados). Digite o seguinte comando:
    ```bash
    sudo apt autoclean
    ```

    2.3 Remover pacotes que foram automaticamente instalados para satisfazer as dependências de outros pacotes e que não são mais necessários. Digite o seguinte comando:
    ```bash
    sudo apt autoremove -y
    ```

    2.4 Buscar as atualizações disponíveis para os pacotes que estão instalados em seu sistema. Digite o seguinte comando e pressione `Enter`:
    ```bash
    sudo apt update
    ```

    2.5 **Corrigir pacotes quebrados**: Isso atualizará a lista de pacotes disponíveis e tentará corrigir pacotes quebrados ou com dependências ausentes:
    ```bash
    sudo apt --fix-broken install
    ```

    2.6 Limpar o `cache` do gerenciador de pacotes `apt` novamente:
    ```bash
    sudo apt clean
    ```

    2.7 Para ver a lista de pacotes a serem atualizados, digite o seguinte comando e pressione `Enter`:
    ```bash
    sudo apt list --upgradable
    ```

    2.8 Realmente atualizar os pacotes instalados para as suas versões mais recentes, com base na última vez que você executou `sudo apt update`. Digite o seguinte comando e pressione `Enter`:
    ```bash
    sudo apt full-upgrade -y
    ```

Para procurar uma palavra-chave ou texto em arquivos no seu sistema `Linux` (`Ubuntu` ou outras distribuições), você pode usar o comando `grep`. Aqui estão algumas maneiras de usar o grep para fazer isso:

1. **Procurar em um arquivo específico**: Isso vai procurar a palavra no arquivo especificado:

    ```bash
    sudo grep "palavra-chave" nome_do_arquivo
    ```

2. **Procurar em múltiplos arquivos**: Isso permite procurar a palavra em mais de um arquivo ao mesmo tempo:

    ```bash
    sudo grep "palavra-chave" arquivo1 arquivo2 arquivo3
    ```

3. **Procurar recursivamente em um diretório**: Se você deseja procurar por uma palavra em todos os arquivos dentro de um diretório e seus subdiretórios:

    ```bash
    sudo grep -r "palavra-chave" /caminho/do/diretório
    ```

4. **Procurar apenas arquivos que correspondem ao texto**: Caso queira que a busca seja recursiva e ver apenas o nome dos arquivos que contêm a palavra procurada, use a opção `-l`:

    ```bash
    sudo grep -rl "palavra-chave" /caminho/do/diretório
    ```

5. **Ignorar a diferenciação entre maiúsculas e minúsculas**: Se você deseja que a busca seja recursível e insensível a maiúsculas/minúsculas, adicione a opção `-i`:

    ```bash
    sudo grep -ri "palavra-chave" /caminho/do/diretório
    ```

6. **Mostrar número das linhas**: Para exibir o número da linha onde a palavra foi encontrada:

    ```bash
    sudo grep -n "palavra-chave" nome_do_arquivo
    ```

Essas são formas comuns de usar o `grep` para buscar palavras no seu sistema.



### 1.1 Código completo para configurar/instalar/usar

Para configurar/instalar/usar o `Linux Cheat Sheet` no `Linux Ubuntu` sem precisar digitar linha por linha, você pode seguir estas etapas:

1. Abrir o `Terminal Emulator`. Você pode fazer isso pressionando:

    ```bash
    Ctrl + Alt + T
    ```

2. Digite o seguinte comando e pressione `Enter`:

    ```bash
    NÃO há.
    ```

### 1.2 Tabela Resumo dos Diretórios Essenciais [4]

<div align="center">

| Diretório | Descrição | Exemplos |
|------------|------------|------------|
| `/` | Diretório raiz (*root*), o topo da hierarquia do sistema de arquivos. | Todos os caminhos absolutos começam aqui. |
| `/bin` | Binários essenciais para os usuários (comandos). | `ls`, `cp`, `mv`, `rm` |
| `/boot` | Arquivos de inicialização (*boot loader*), incluindo kernel, initrd e configurações do carregador de boot. | Imagem do kernel, configuração do GRUB |
| `/dev` | Arquivos de dispositivos (*device files*), representando dispositivos de hardware. | `/dev/sda`, `/dev/tty` |
| `/etc` | Arquivos de configuração globais do sistema. | `/etc/network/interfaces`, `/etc/passwd`, `/etc/ssh/sshd_config` |
| `/home` | Diretórios pessoais dos usuários. | `/home/joao`, `/home/maria` |
| `/lib` | Bibliotecas compartilhadas essenciais do sistema. | `libc.so` |
| `/media` | Ponto de montagem para mídias removíveis (pendrives, CDs, DVDs etc.). | `/media/cdrom`, `/media/usb` |
| `/mnt` | Ponto de montagem temporário. | Montagem de um compartilhamento de rede em `/mnt` |
| `/opt` | Software opcional de terceiros. | Instalação de uma suíte de software em `/opt` |
| `/proc` | Informações sobre processos e o kernel (sistema de arquivos virtual). | `/proc/cpuinfo`, `/proc/[pid]` |
| `/root` | Diretório pessoal do usuário administrador (*root*). | `/root/.bashrc` |
| `/sbin` | Binários de administração do sistema (comandos administrativos). | `fdisk`, `shutdown` |
| `/srv` | Dados utilizados por serviços do sistema, como servidores web e FTP. | `/srv/www` |
| `/tmp` | Arquivos temporários (geralmente removidos após reinicialização). | Arquivos temporários criados por aplicações |
| `/usr` | Programas, bibliotecas e utilitários de uso geral. | `/usr/bin/gcc`, `/usr/share/doc` |
| `/var` | Dados variáveis do sistema, como logs, filas e arquivos temporários persistentes. | `/var/log`, `/var/spool/mail` |

</div>


## 2. Rede

<div align="center">

| Comando        | Descrição em Inglês                 | Descrição em Português                      |
|----------------|-------------------------------------|---------------------------------------------|
| `dig -x [ip]`  | IP address reverse lookup          | Consulta reversa de endereço IP             |
| `dig -x [host]`| Domain reverse lookup              | Consulta reversa de domínio                 |
| `dig [domain]` | Show domain's DNS info             | Mostrar informações de DNS do domínio       |
| `get [file]`   | Download a file from remote to local| Baixar um arquivo de remoto para local     |
| `host [domain]`| IP lookup for a domain             | Consulta de IP para um domínio              |
| `curl -O [file_url]`| Download a file from url      | Baixar um arquivo de uma URL                |
| `ifconfig`     | Show all network interfaces        | Mostrar todas as interfaces de rede         |
| `ip addr show` | Show IP addresses                  | Mostrar endereços IP                        |
| `ip address add [ip]`| Assign IP address to interface| Atribuir endereço IP à interface            |
| `netstat -pntlu`| Show active listening ports       | Mostrar portas ativas de escuta             |
| `nslookup [domain]`| Network information            | Informação de rede                          |
| `ping [hostname]`| Check network status             | Verificar status da rede                    |
| `put [file]`   | Upload file from local to remote computer| Enviar arquivo de local para remoto     |
| `quit`         | Logout                             | Sair                                         |
| `traceroute [host]`| Trace route to host             | Rastrear rota até o host                    |
| `wget [file_url]`| Download a file from url         | Baixar um arquivo de uma URL                |
| `whois [domain]`| Show domain information           | Mostrar informações do domínio              |

</div>

## 3. Comandos de usuários e grupos

<div align="center">

| Comando         | Descrição em Inglês            | Descrição em Português                 |
|-----------------|--------------------------------|----------------------------------------|
| `adduser [user]`| Add a new user                 | Adicionar um novo usuário              |
| `useradd [user]`| Add a new user                 | Adicionar um novo usuário              |
| `chgrp [group] [directory]`| Change directory group | Mudar grupo de diretório          |
| `groupadd [group]`| Add a new group              | Adicionar um novo grupo                |
| `id`            | Show active user details       | Mostrar detalhes do usuário ativo      |
| `last`          | Show last system logins        | Mostrar últimas entradas no sistema    |
| `passwd [username]`| Change the password for the user | Mudar a senha do usuário        |
| `su [user]`     | Switch user                    | Trocar de usuário                       |
| `userdel [user]`| Delete a user                  | Excluir um usuário                     |
| `usermod`       | Modify user information        | Modificar informações de um usuário    |
| `usermod -aG [group] [user]` | Add user to group | Adicionar usuário a um grupo         |
| `w`             | Show logged users and activity | Mostrar usuários logados e atividade   |
| `who`           | Show who is logged in          | Mostrar quem está logado               |

</div>

## 4. Comandos de Navegação de Diretórios

<div align="center">

| Comando         | Descrição em Inglês             | Descrição em Português                |
|-----------------|---------------------------------|---------------------------------------|
| `cd`            | Move up one level               | Subir um nível                        |
| `cd`            | Change directory to $HOME       | Mudar diretório para o $HOME          |
| `cd [location]` | Change to specified directory   | Mudar para o diretório especificado   |
| `pwd`           | Print working directory         | Mostrar o diretório atual             |

</div>

## 5. Informações de Hardware

<div align="center">

| Comando          | Descrição em Inglês               | Descrição em Português                  |
|------------------|-----------------------------------|-----------------------------------------|
| `cat /proc/cpuinfo`| Show CPU information            | Mostrar informações da CPU              |
| `dmesg`          | Show bootup messages              | Mostrar mensagens de inicialização      |
| `dmidecode`      | Show BIOS hardware info           | Mostrar informações de hardware da BIOS |
| `free -h`        | Show free and used memory         | Mostrar memória livre e usada           |
| `lsblk`          | Block devices info                | Informações de dispositivos de bloco    |
| `lshw`           | Hardware configuration info       | Informações de configuração de hardware |
| `lsusb -tv`      | Tree-diagram of USB devices       | Diagrama em árvore dos dispositivos USB |
| `neofetch`       | Display OS & hardware info        | Mostrar informações do SO e hardware    |
| `hdparm -i /dev/[disk]`| Show disk data info         | Mostrar informações de dados do disco   |
| `hdparm -Tt /dev/[disk]`| Disk read speed test       | Teste de velocidade de leitura do disco |
| `badblocks -s /dev/[disk]`| Unreadable blocks test   | Teste de blocos ilegíveis               |

</div>

## 6. Compressão de Arquivos

<div align="center">

| Comando               | Descrição em Inglês                 | Descrição em Português                  |
|-----------------------|-------------------------------------|-----------------------------------------|
| `gzip [file]`         | Create a gz compressed file         | Criar um arquivo comprimido gz          |
| `tar xf [file.tar]`   | Extract archived file               | Extrair arquivo arquivado               |
| `zip`/`unzip`         | Package & compress files            | Empacotar e comprimir arquivos          |
| `tar cf [file.tar] [file]`| Create a tar file from a file  | Criar um arquivo tar a partir de um arquivo|
| `tar czf [file.tar.gz]`| Create a gzip tar file            | Criar um arquivo tar gzip               |

</div>


## 7. Instalação de Pacotes

<div align="center">

| Comando                     | Descrição em Inglês                    | Descrição em Português                             |
|-----------------------------|----------------------------------------|----------------------------------------------------|
| `apt-get`                   | Search for and install software packages | Pesquisar e instalar pacotes de software          |
| `apt install [package]`     | Install a package with APT              | Instalar um pacote com APT                         |
| `dnf install [package.rpm]` | Install a package with DNF              | Instalar um pacote com DNF                         |
| `rpm -e [package.rpm]`      | Remove an rpm package                   | Remover um pacote rpm                              |
| `rpm -ivh [package.rpm]`    | Install a local rpm package             | Instalar um pacote rpm local                       |
| `yum info [package]`        | Package info & summary                  | Informação e resumo do pacote                      |
| `yum install [package]`     | Install a package with YUM              | Instalar um pacote com YUM                         |
| `yum search [package]`      | Find a package by a keyword             | Encontrar um pacote por uma palavra-chave          |

</div>


## 8. Gerenciamento de Sistema

<div align="center">

| Comando                | Descrição em Inglês                   | Descrição em Português                              |
|------------------------|---------------------------------------|-----------------------------------------------------|
| `cat`                  | Show current day and month            | Mostrar dia e mês atuais                            |
| `cal`                  | Show calendar                         | Mostrar calendário                                  |
| `date`                 | Show current time and date            | Mostrar hora e data atuais                          |
| `finger [username]`    | Show user information                 | Mostrar informações do usuário                      |
| `hostname`             | Show system hostname                  | Mostrar nome do host do sistema                     |
| `hostname -I`          | Show System IP address                | Mostrar endereço IP do sistema                      |
| `last reboot`          | Show reboot history                   | Mostrar histórico de reinicialização                |
| `modprobe [module-name]`| Add a new kernel module              | Adicionar um novo módulo do kernel                  |
| `shutdown [h:mm]`      | Schedule a system shut down           | Agendar desligamento do sistema                     |
| `shutdown now`         | Shut down immediately                 | Desligar imediatamente                              |
| `ulimit [tags][limit]` | Manage the system clock               | Gerenciar o relógio do sistema                      |
| `uname -a`             | Show kernel release info              | Mostrar informações de lançamento do kernel         |
| `uname -r`             | Show system information               | Mostrar informações do sistema                      |
| `uptime`               | Show uptime length/avg load           | Mostrar tempo de atividade/carga média              |
| `whoami`               | Show the current user                 | Mostrar o usuário atual                             |

</div>

## 9. Permissões de Arquivo

<div align="center">

| Comando          | Descrição em Inglês                             | Descrição em Português                                   |
|------------------|-------------------------------------------------|----------------------------------------------------------|
| `chmod 755 [file]` | Full permission to owner; read permissions for others | Permissão total para o proprietário; permissão de leitura para outros |
| `chmod 766 [file]` | Full permission to owner; read and write for others  | Permissão total para o proprietário; leitura e escrita para outros  |
| `chmod 777 [file]` | Full read, write, execute permissions to everyone  | Permissão total de leitura, escrita e execução para todos           |
| `chown [user][file]` | Change file ownership                            | Mudar a propriedade do arquivo                                     |
| `chown [user][group][file]` | Change file owner and group                    | Mudar o proprietário do arquivo e grupo                            |

</div>


## 10. _Login_ SSH

<div align="center">

| Comando           | Descrição em Inglês                       | Descrição em Português                               |
|-------------------|-------------------------------------------|------------------------------------------------------|
| `ssh [user]@[host]`| Connect to host as user                  | Conectar ao host como usuário                        |
| `ssh [host]`       | Connect to host via port 22              | Conectar ao host via porta 22                        |
| `telnet [host]`    | Connect to Telnet via port 23            | Conectar ao Telnet via porta 23                      |
| `ssh -p [port][user]@[host]`| Use a non-default port           | Usar uma porta não padrão                            |

</div>


## 11. Variáveis Bash

<div align="center">

| Comando             | Descrição em Inglês                       | Descrição em Português                                 |
|---------------------|-------------------------------------------|--------------------------------------------------------|
| `declare [variable]=[value]` | Declare a Bash variable          | Declarar uma variável Bash                             |
| `echo $[variable]`  | Display value of the variable             | Exibir valor da variável                               |
| `export [variable]` | Export a Bash variable                    | Exportar uma variável Bash                             |
| `let [variable]=[value]` | Assign integer value to var          | Atribuir valor inteiro à variável                      |
| `set`               | List variables and functions              | Listar variáveis e funções                             |

</div>


## 12. Transferência de Arquivos

<div align="center">

| Comando         | Descrição em Inglês                | Descrição em Português                                 |
|-----------------|------------------------------------|--------------------------------------------------------|
| `scp [file.txt][server:/tmp]` | Securely transfer a file   | Transferir um arquivo de forma segura                  |
| `rsync -a /location/ /backup/` | Sync the contents of a location with the backup directory | Sincronizar os conteúdos de uma localização com o diretório de backup |

</div>


## 13. Uso de Disco

<div align="center">

| Comando        | Descrição em Inglês                        | Descrição em Português                                   |
|----------------|--------------------------------------------|----------------------------------------------------------|
| `fdisk -l`     | Disk partition types and sizes             | Tipos e tamanhos de partições de disco                   |
| `df -h`        | Show free space on system                  | Mostrar espaço livre no sistema                          |
| `du -ah`       | Show disk usage for all files              | Mostrar uso do disco para todos os arquivos              |
| `du -sh`       | Show disk usage for current directory      | Mostrar uso do disco para o diretório atual              |
| `findmnt`      | Show target mount point                    | Mostrar ponto de montagem alvo                           |
| `mount [device][mount point]` | Mount a device               | Montar um dispositivo                                    |

</div>


## 14. Processos Relacionados

<div align="center">

| Comando          | Descrição em Inglês                           | Descrição em Português                                   |
|------------------|-----------------------------------------------|----------------------------------------------------------|
| `bg`             | List background processes                     | Listar processos em segundo plano                        |
| `clear`          | Clear terminal screen                         | Limpar a tela do terminal                                |
| `fg [job]`       | Bring job to foreground                       | Trazer trabalho para o primeiro plano                    |
| `kill [process_id]` | Kill the process by ID                     | Matar o processo pelo ID                                 |
| `pkill [process_name]` | Kill the process by name                | Matar o processo pelo nome                               |
| `killall [process_name]` | Kill all processes by name           | Matar todos os processos pelo nome                        |
| `lsof`           | List files opened by processes                | Listar arquivos abertos por processos                    |
| `ps`             | Show active process snapshot                  | Mostrar instantâneo de processos ativos                  |
| `pstree`         | Show processes as a tree                      | Mostrar processos em forma de árvore                     |
| `top`            | Show all running processes                    | Mostrar todos os processos em execução                   |
| `htop`           | Interactive process viewer                    | Visualizador interativo de processos                     |
| `wait`           | Pause terminal until process completes        | Pausar terminal até que o processo seja completado       |
| `nice`           | Start a process with a given priority         | Iniciar um processo com uma prioridade dada              |
| `fg`             | Most recent suspended job to foreground       | Trabalho suspenso mais recente para o primeiro plano     |
| `ps PID`         | Give the status of a particular process       | Dar o status de um processo específico                   |
| `renice`         | Change priority of a running process          | Mudar a prioridade de um processo em execução            |

</div>

## 15. Comandos de _Shell_

<div align="center">

| Comando          | Descrição em Inglês                          | Descrição em Português                                   |
|------------------|----------------------------------------------|----------------------------------------------------------|
| `alias [alias]='[command]'` | Create command alias            | Criar um alias para comando                              |
| `at [hh:mm]`     | Schedule a job                               | Agendar um trabalho                                      |
| `cp [source] [dest]` | Copy files or directories                | Copiar arquivos ou diretórios                            |
| `diff [file1] [file2]` | Compare files                         | Comparar arquivos                                        |
| `history`        | Print command history                        | Imprimir histórico de comandos                           |
| `jobs`           | Display current jobs & status                | Mostrar trabalhos atuais e seu status                    |
| `ln [target] [link_name]` | Create links                        | Criar links                                              |
| `locate [pattern]` | Locate files                               | Localizar arquivos                                       |
| `man [command]`  | Display command manual                       | Exibir manual de comando                                 |
| `mv [source] [dest]` | Move or rename files                    | Mover ou renomear arquivos                               |
| `nano [file]`    | Open a text editor                           | Abrir um editor de texto                                 |
| `rm [file]`      | Remove files                                 | Remover arquivos                                         |
| `rmdir [dir]`    | Remove empty directories                     | Remover diretórios vazios                                |
| `sed 's/old/new/' [file]` | Search and replace                 | Buscar e substituir                                      |
| `sleep [interval] && [command]` | Postpone command execution   | Adiar execução de comando                                |
| `tail [file]`    | Show last lines of a file                    | Mostrar as últimas linhas de um arquivo                  |
| `tee [file]`     | Write output to file and terminal            | Enviar saída para arquivo e terminal                     |
| `touch [file]`   | Create empty file                            | Criar arquivo vazio                                      |
| `unalias`        | Remove an alias                              | Remover um alias                                         |
| `vi [file]`      | Open a text editor                           | Abrir um editor de texto                                 |
| `watch -n [interval] [command]` | Set interval to run a command | Definir intervalo para executar um comando               |
| `awk '{print $1}' [file]` | Pattern scanning and processing     | Buscar e manipular padrões                               |
| `jed [file]`     | Open a text editor                           | Abrir um editor de texto                                 |

</div>

## 16. Atalhos de Teclado

<div align="center">

| Atalho           | Ação                                         |
|:----------------:|----------------------------------------------|
| `!!`             | Repeat the last command                      |
| `exit`           | Log out of the session                       |
| `Ctrl + C`       | Kill current process                         |
| `Ctrl + G`       | Exit command history                         |
| `Ctrl + K`       | Cut part of the line after the cursor         |
| `Ctrl + O`       | Run the recalled command                     |
| `Ctrl + R`       | Recall last command                          |
| `Ctrl + U`       | Cut part of the line before the cursor       |
| `Ctrl + W`       | Cut the word before the cursor               |
| `Ctrl + Y`       | Paste from clipboard                         |
| `Ctrl + Z`       | Stop process (can be resumed)                |
| `Ctrl + Alt + F7`| Switch to the first graphical terminal       |
| `Ctrl + Alt + F10`| Switch to a virtual console                 |

</div>


## 17. Linux Cheat Sheet _Aliases_

1. **Abrir o `Terminal Emulator`**:

    ```bash
    Ctrl + Alt + T
    ```

2. **Abrir o arquivo `source` do `Terminal Emulator`**:

    ```bash
    sudo nano ~/.zshrc
    ```

    Substitua `zshrc` por `bashrc` caso você use o `bash`.

3. **Copiar e colar o código abaixo no final do arquivo `~/.zshrc`**:

    ```bash
    # Eden Denis, [11/02/2026 16:16]
    # =========================
    #  Linux Cheat Sheet Aliases
    # =========================

    # ---- PRINCIPAIS ALIASES ----
    alias ls='ls -ahlF'
    alias mkdir='mkdir -pv'
    alias tree='tree -ahlF'

    # ---- Atualização e Limpeza do Sistema ----
    alias update='sudo apt update && sudo apt list --upgradable && sudo apt full-upgrade -y'
    alias cleanapt='sudo apt clean && sudo apt autoclean && sudo apt autoremove -y'

    # ---- Navegação Rápida ----
    alias home='cd ~'
    alias docs='cd ~/Documents'
    alias desk='cd ~/Desktop'

    # ---- Listagem de Arquivos e Pastas ----
    alias ll='ls -ahlF --color=auto'
    alias la='ls -A --color=auto'
    alias l='ls -CF --color=auto'

    # ---- Busca e Inspeção ----
    alias grep='grep --color=auto'
    alias finddir='find . -type d -name'
    alias findfile='find . -type f -name'

    # ---- Monitoramento de Sistema ----
    alias meminfo='free -h'
    alias cpuinfo='lscpu'
    alias diskuse='df -h'
    alias proc='ps aux --sort=-%mem | head'
    alias topcpu='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head'

    # ---- Rede ----
    alias myip='hostname -I'
    alias pingg='ping google.com'
    alias netlisten='netstat -pntlu'

    # ---- Transferência de Arquivos ----
    alias scpup='scp'
    alias rsyncup='rsync -avz'

    # ---- Informações de Hardware ----
    alias usbinfo='lsusb'
    alias pciinfo='lspci'
    alias diskinfo='lsblk'
    alias cpumodel='cat /proc/cpuinfo | grep "model name" | uniq'

    # ---- Processos ----
    alias killpid='kill -9'
    alias psgrep='ps aux | grep -i'

    # ---- Uso de Disco ----
    alias diskfree='df -h'
    alias diskdu='du -sh * 2>/dev/null'

    # ---- Segurança ----
    alias sshcon='ssh'
    alias sftpcon='sftp'

    # ---- Atualização e Limpeza do Sistema ----
    alias update='sudo apt update && sudo apt list --upgradable && sudo apt full-upgrade -y'
    alias cleanapt='sudo apt clean && sudo apt autoclean && sudo apt autoremove -y'

    # ---- Navegação Rápida ----
    alias home='cd ~'
    alias docs='cd ~/Documents'
    alias desk='cd ~/Desktop'

    # ---- Listagem de Arquivos e Pastas ----
    alias ll='ls -ahlF --color=auto'
    alias la='ls -A --color=auto'
    alias l='ls -CF --color=auto'

    # ---- Busca e Inspeção ----
    alias grep='grep --color=auto'
    alias finddir='find . -type d -name'
    alias findfile='find . -type f -name'

    # ---- Monitoramento de Sistema ----
    alias meminfo='free -h'
    alias cpuinfo='lscpu'
    alias diskuse='df -h'
    alias proc='ps aux --sort=-%mem | head'
    alias topcpu='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head'

    # ---- Rede ----
    alias myip='hostname -I'
    alias pingg='ping google.com'
    alias netlisten='netstat -pntlu'

    # ---- Transferência de Arquivos ----
    alias scpup='scp'
    alias rsyncup='rsync -avz'

    # ---- Informações de Hardware ----
    alias usbinfo='lsusb'
    alias pciinfo='lspci'
    alias diskinfo='lsblk'
    alias cpumodel='cat /proc/cpuinfo | grep "model name" | uniq'

    # ---- Processos ----
    alias killpid='kill -9'
    alias psgrep='ps aux | grep -i'

    # ---- Uso de Disco ----
    alias diskfree='df -h'
    alias diskdu='du -sh * 2>/dev/null'

    # ---- Segurança ----
    alias sshcon='ssh'
    alias sftpcon='sftp'

    # ---
    # ATALHOS PARA PASTAS:
    # Evita depender do mount remoto do rclone durante a inicializacao do shell.
    # ---

    # Eden Denis, [11/02/2026 16:16]
    # ---- PRINCIPAIS ALIASES ----
    alias cea="~/cea/cea_run"
    alias cdaiinspector="cd ~/Documents/Downloads/unix/ubuntu/python/nicegui/subs/submodules/ai_inspector/"
    alias cdaudithas='cd ~/Documents/Downloads/unix/ubuntu/python/nicegui/subs/submodules/ai_inspector/'  # Específico
    alias cdc3gothermo="cd ~/Documents/Downloads/unix/ubuntu/python/nicegui/subs/submodules/c3go_thermo/"
    alias cddesktop="cd ~/Desktop"
    alias cddocuments="cd ~/Documents"
    alias cddownloads="cd ~/Downloads"
    alias cdita="cd ~/Documents/UNIVERSITIES/ITA/"
    alias cdkmeans="cd ~/Documents/UNIVERSITIES/ITA/MESTRADO/eden_denis/thesis/subs/submodules/k_means_thesis/"
    alias cdlatexpresentationtemplate='cd ~/Documents/UNIVERSITIES/ITA/MESTRADO/eden_denis/SEMESTRES/latex_presentation_template'  # Específico
    alias cdlatexthetistemplate='cd ~/Documents/UNIVERSITIES/ITA/MESTRADO/eden_denis/SEMESTRES/latex_thesis_template/subs/submodules/audithas'  # Específico
    alias cdmusic="cd ~/Music"
    alias cdpictures="cd ~/Pictures"
    alias cdthesis="cd ~/Documents/UNIVERSITIES/ITA/MESTRADO/eden_denis/thesis/"
    alias cdtrash="trash:///"
    alias cdubuntu='cd ~/Documents/Downloads/unix/ubuntu/'
    alias cdvideos="cd ~/Videos"
    alias cp="cp -ai"  # Cópia segura para o uso diário;-a: archive, -i: interactive (ask before overwrite)
    alias cpb="cp -aiv --"  # Cópia para backup/sincronização manual;-a: archive, -i: interactive (ask before overwrite), -v: verbose, --: end of options (permite copiar arquivos começando com -)
    alias cpi="cp -ai"  # Cópia segura para o uso diário;-a: archive, -i: interactive (ask before overwrite)
    alias cpu="cp -auv"  # Cópia para backup/sincronização manual;-a: archive, -u: update (copy only when source is newer than destination), -v: verbose
    alias cpn="cp -anv"  # Cópia extremamente conservadora;-a: archive, -n: no-clobber (do not overwrite existing files), -v: verbose
    alias l="ls -ahlF --color"
    alias ls='ls -ahlF --color'
    alias mv="mv -i --"  # Movimentação segura para o uso diário; -i: interactive (ask before overwrite), --: end of options (permite mover arquivos começando com -)
    alias mvi="mv -i --"  # Movimentação segura para o uso diário; -i: interactive (ask before overwrite), --: end of options (permite mover arquivos começando com -)
    alias mvb="mv -iv --"  # Movimentação com confirmação e exibição; -i: interactive (ask before overwrite), -v: verbose, --: end of options
    alias mvu="mv -uv --"  # Movimentação para atualização; -u: update (move only when source is newer than destination), -v: verbose, --: end of options
    alias mvn="mv -nv --"  # Movimentação extremamente conservadora; -n: no-clobber (do not overwrite existing files), -v: verbose, --: end of options
    alias mvbk="mv -iv --backup=numbered --"  # Movimentação com versionamento; -i: interactive (ask before overwrite), -v: verbose, --backup=numbered: keep numbered backups, --: end of options
    alias rm="gio trash"  # Remoção segura para o uso diário; envia arquivos e diretórios para a lixeira
    alias rmi="gio trash"  # Remoção segura para o uso diário; envia arquivos e diretórios para a lixeira
    alias rmv="gio trash"  # Remoção segura com lixeira; gio trash não possui modo verbose
    alias rmr="rm -rI --"  # Remoção recursiva definitiva segura; -r: recursive, -I: confirmação única
    alias rmn="rm -rIv --one-file-system --"  # Remoção definitiva conservadora de árvores
    alias rmrf="rm -rfI --"  # Remoção definitiva forçada com confirmação única
    alias gitmergeandcleanup='./subs/submodules/shell_scripts/git_merge_and_cleanup.sh'
    alias preparerepo='./subs/submodules/shell_scripts/prepare_repo.sh'
    alias mkdir='mkdir -pv'
    alias python='python3.10'
    alias python3='python3.10'
    alias tree='tree -ahlF'
    alias reboot='sudo reboot -f'
    alias shutdown='sudo shutdown now'
    alias suspend='sudo systemctl suspend -f'
    alias ytmp4='yt-dlp -f "bv*+ba/b" --merge-output-format mp4'
    alias ytmp3='yt-dlp -x --audio-format mp3'

    # ---
    export PATH="$HOME/.npm-global/bin:$PATH"


    # --- FOAM-EXTEND / OPENFOAM ALIASES ---
    alias fe='bash -c "source /opt/foam/foam-extend-5.0/etc/bashrc && exec zsh"'
    alias fe5='bash -c "source /opt/foam/foam-extend-5.0/etc/bashrc && exec zsh"'
    alias foamextend='bash -c "source /opt/foam/foam-extend-5.0/etc/bashrc && exec zsh"'
    alias foamextend5='bash -c "source /opt/foam/foam-extend-5.0/etc/bashrc && exec zsh"'
    alias of='bash -c "source /opt/openfoam11/etc/bashrc && exec zsh"'
    alias of11='bash -c "source /opt/openfoam11/etc/bashrc && exec zsh"'
    alias openfoam11='bash -c "source /opt/openfoam11/etc/bashrc && exec zsh"'

    # # Carregar foam-extend
    # if [ -f /opt/foam/foam-extend-5.0/etc/bashrc ]; then
    #     source /opt/foam/foam-extend-5.0/etc/bashrc
    # fi

    # --- Git ---
    gh_latest_branch() {
    local repo="$1"

    gh api repos/"$repo"/branches --paginate \
        --jq '.[] | [.name, .commit.sha] | @tsv' | \
    while IFS=$'\t' read -r branch sha; do
        gh api repos/"$repo"/commits/"$sha" \
        --jq "\"\(.commit.committer.date) $branch\""
    done | sort -r | head -n 1
    }

    alias gitsubmoduleaddshellscripts='git submodule add -b main --force git@github.com:edftechnology/shell_scripts.git subs/submodules/shell_scripts'
    alias gitsubmoduleaddlso='git submodule add -b main git@github.com:edftechnology/lso_latex_synchronizer_with_overleaf.git subs/submodules/lso_latex_synchronizer_with_overleaf'
    alias gitsubupdate='git submodule update --init --recursive --remote'

    # --- TMUX ---
    set -g @plugin 'tmux-plugins/tmux-resurrect'

    # --- Chemical Equilibrium with Applications (CEA) ---
    alias cea="~/cea/cea_run"

    # --- LSO: overleaf.com ---
    alias gitsubmoduleaddlso='git submodule add git@github.com:edftechnology/lso_latex_synchronizer_with_overleaf.git subs/submodules/lso_latex_synchronizer_with_overleaf'

    lso() {
        # Define o caminho para o script em relação ao diretório atual ou raiz do projeto
        # Ajuste o caminho abaixo se você mover o diretório de execução
        local LSO_PATH="subs/submodules/lso_latex_synchronizer_with_overleaf/scripts/lso_latex_synchronizer_with_overleaf.py"
        
        # Verifica se o script existe no caminho relativo atual
        if [ ! -f "$LSO_PATH" ]; then
            echo "[ERROR] LSO script não encontrado em: $LSO_PATH"
            return 1
        fi
    
        # Se o primeiro argumento for um subcomando e nao houver --repo-path, insere automaticamente
        if [[ "$1" =~ ^(init|list|sync|watch|remote|login|fetch|pull|push|download_pdf)$ ]]; then
            python3 "$LSO_PATH" "$1" --repo-path . "${@:2}"
        else
            python3 "$LSO_PATH" "$@"
        fi
        }

    # alias lso-init='lso init'
    # alias lso-login='lso login'
    # alias lso-list='lso list'
    # alias lso-download_pdf='lso download_pdf'
    # alias lso-sync='lso sync'
    # alias lso-bisync='lso bisync'
    # alias lso-watch='lso watch'
    # alias lso-watch_session='lso watch_session'
    # alias lso-watch_session-status='lso watch_session_status'
    # alias lso-watch_session-stop='lso watch_session_stop'
    # alias lso-prune_local='lso prune_local'
    # alias lso-prune_local-all='lso prune_local-all'
    # alias lso-help='lso --help'

    # --- LSO: servidor interno ---
    alias gitsubmoduleaddlso='git submodule add git@github.com:edftechnology/lso_latex_synchronizer_with_overleaf.git subs/submodules/lso_latex_synchronizer_with_overleaf'
    alias lso-int-init='python3 subs/submodules/lso_latex_synchronizer_with_overleaf/scripts/lso_latex_synchronizer_with_overleaf.py init --repo_path . --host http://192.168.XX.YYY:8001/project'
    alias lso-int-sync='python3 subs/submodules/lso_latex_synchronizer_with_overleaf/scripts/lso_latex_synchronizer_with_overleaf.py sync --repo_path . --host http://192.168.XX.YYY:8001/project'
    alias lso-int-watch='python3 subs/submodules/lso_latex_synchronizer_with_overleaf/scripts/lso_latex_synchronizer_with_overleaf.py watch --repo_path . --host http://192.168.XX.YYY:8001/project'
    alias lso-int-bisync='python3 subs/submodules/lso_latex_synchronizer_with_overleaf/scripts/lso_latex_synchronizer_with_overleaf.py bisync --repo_path . --host http://192.168.XX.YYY:8001/project'

    lso-int-compile-sync() {
    if [ "$1" != "--project_id" ] || [ -z "$2" ]; then
        printf 'Usage: lso-int-compile-sync --project_id <ID_DO_SEU_PROJETO_OVERLEAF>\n' >&2
        return 2
    fi

    python3 subs/submodules/lso_latex_synchronizer_with_overleaf/scripts/lso_latex_synchronizer_with_overleaf.py \
        init --repo_path . --profile compile --force \
        --host http://192.168.XX.YYY:8001/project &&

    python3 subs/submodules/lso_latex_synchronizer_with_overleaf/scripts/lso_latex_synchronizer_with_overleaf.py \
        sync --repo_path . --project_id "$2" --prune_remote \
        --host http://192.168.XX.YYY:8001/project
    }

    # --- Desativar/Ativar o touchpad/mousepad ---
    alias mousepad_off='xinput disable "DLL07B0:01 044E:120B"'
    alias mousepad_on='xinput enable "DLL07B0:01 044E:120B"'

    alias touchpad_off='xinput disable "DLL07B0:01 044E:120B"'
    alias touchpad_on='xinput enable "DLL07B0:01 044E:120B"'

    # --- ollama --
    ## Ajustar performance da cpu
    export OLLAMA_NUM_THREADS=$(nproc --ignore=2)
    ## - deixa 2 núcleos livres

    export OLLAMA_MAX_LOADED_MODELS=$(nproc --ignore=2)
    ## - mantém sistema responsivo
    export PATH="$HOME/bin:$PATH"

    # --- gaseq ---
    alias gaseq='WINEPREFIX=$HOME/.wine-gaseq wine "C:\\Program Files\\GASEQ\\Gaseq.exe"'

    # --- Codex ---
    alias codex='command codex'
    alias codex-safe='command codex'
    alias codex-fast='command codex'
    alias codex-full='command codex -a never -s danger-full-access'
    alias codex-yolo='command codex -a never -s danger-full-access'

    # --- Android Studio ---
    alias android-studio='/opt/android-studio/bin/studio'

    # ---
    ```

4. Atualizar o `source` do `Terminal`:

    ```bash
    source ~/.zshrc
    ```

    Substitua `zshrc` por `bashrc` caso você use o `bash`.



## 18. Atalhos para Pastas

1. **Abrir o `Terminal Emulator`**:

    ```bash
    Ctrl + Alt + T
    ```

2. **Abrir o arquivo `source` do `Terminal Emulator`**:

    ```bash
    sudo nano ~/.zshrc
    ```

Substitua `zshrc` por `bashrc` caso você use o `bash`.


3. **Copiar e colar o código abaixo no final do arquivo `~/.zshrc`**:

    ```bash
    # ---
    # ATALHOS PARA PASTAS:
    export CDPATH=$CDPATH:/home/edenedfsls/Documents/Downloads/unix/ubuntu
    # ---
    ```

4. Atualizar o `source` do `Terminal`:

    ```bash
    source ~/.zshrc
    ```

    Substitua `zshrc` por `bashrc` caso você use o `bash`.



## Referências

[1] OPENAI. **Instalar o `principais comandos do linux` no `linux ubuntu` pelo `terminal emulator`.** Disponível em: <https://chatgpt.com/c/66e99b91-aa6c-8002-9401-ccd319b980e3> (texto adaptado). Acessado em: 17/09/2024 15:35.

[2] OPENAI. **Vs code: editor popular.** Disponível em: <https://chat.openai.com/c/b640a25d-f8e3-4922-8a3b-ed74a2657e42> (texto adaptado). Acessado em: 17/09/2024 15:35.

[3] USER: ARIS S.. **Top 60 linux commands: what they are and how to use them effectively**. Disponível em: <https://www.hostinger.com/tutorials/linux-commands?utm_campaign=Generic-Tutorials-DSA-t2|NT:Se|Lang:EN|LO:BR&utm_medium=ppc&gad_source=1&gad_campaignid=20990084344&gbraid=0AAAAADMy-hYSlrOpsfeXBdAXnfXldpB1q&gclid=Cj0KCQiAtfXMBhDzARIsAJ0jp3AEsSUQb1rIe-QbnkGmvmQZE6_Z0EsQCsq1_QWC5ClqOkKkNxyOdvkaAiElEALw_wcB> (texto adaptado). Acessado em: 24/02/2026.

[4] ROADMAP.SH. **Linux terminal basics**. Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics>. Acessado em: 09/06/2026.
