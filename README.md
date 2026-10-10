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

| # | Diretório | Descrição | Exemplos | Mais informações |
| :--: | :--- | :--- | :--- | :---: |
| 1 | `/` | Diretório raiz (*root*), o topo da hierarquia do sistema de arquivos. | Todos os caminhos absolutos começam aqui. | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 2 | `/bin` | Binários essenciais para os usuários (comandos). | `ls`, `cp`, `mv`, `rm` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 3 | `/boot` | Arquivos de inicialização (*boot loader*), incluindo kernel, initrd e configurações do carregador de boot. | Imagem do kernel, configuração do GRUB | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 4 | `/dev` | Arquivos de dispositivos (*device files*), representando dispositivos de hardware. | `/dev/sda`, `/dev/tty` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 5 | `/etc` | Arquivos de configuração globais do sistema. | `/etc/network/interfaces`, `/etc/passwd`, `/etc/ssh/sshd_config` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 6 | `/home` | Diretórios pessoais dos usuários. | `/home/joao`, `/home/maria` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 7 | `/lib` | Bibliotecas compartilhadas essenciais do sistema. | `libc.so` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 8 | `/media` | Ponto de montagem para mídias removíveis (pendrives, CDs, DVDs etc.). | `/media/cdrom`, `/media/usb` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 9 | `/mnt` | Ponto de montagem temporário. | Montagem de um compartilhamento de rede em `/mnt` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 10 | `/opt` | Software opcional de terceiros. | Instalação de uma suíte de software em `/opt` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 11 | `/proc` | Informações sobre processos e o kernel (sistema de arquivos virtual). | `/proc/cpuinfo`, `/proc/[pid]` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 12 | `/root` | Diretório pessoal do usuário administrador (*root*). | `/root/.bashrc` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 13 | `/sbin` | Binários de administração do sistema (comandos administrativos). | `fdisk`, `shutdown` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 14 | `/srv` | Dados utilizados por serviços do sistema, como servidores web e FTP. | `/srv/www` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 15 | `/tmp` | Arquivos temporários (geralmente removidos após reinicialização). | Arquivos temporários criados por aplicações | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 16 | `/usr` | Programas, bibliotecas e utilitários de uso geral. | `/usr/bin/gcc`, `/usr/share/doc` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |
| 17 | `/var` | Dados variáveis do sistema, como logs, filas e arquivos temporários persistentes. | `/var/log`, `/var/spool/mail` | [Clique aqui para mais informações](docs/command_reference/essential_directories/README.md) |

</div>


## 2. Rede

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `dig -x [ip]` | Domain Information Groper | IP address reverse lookup | Consulta reversa de endereço IP | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 2 | `dig -x [host]` | Domain Information Groper | Domain reverse lookup | Consulta reversa de domínio | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 3 | `dig [domain]` | Domain Information Groper | Show domain's DNS info | Mostrar informações de DNS do domínio | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 4 | `get [file]` | — | Download a file from remote to local | Baixar um arquivo de remoto para local | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 5 | `host [domain]` | — | IP lookup for a domain | Consulta de IP para um domínio | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 6 | `curl -O [file_url]` | client URL | Download a file from url | Baixar um arquivo de uma URL | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 7 | `ifconfig` | interface configuration | Show all network interfaces | Mostrar todas as interfaces de rede | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 8 | `ip addr show` | Internet Protocol | Show IP addresses | Mostrar endereços IP | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 9 | `ip address add [ip]` | Internet Protocol | Assign IP address to interface | Atribuir endereço IP à interface | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 10 | `netstat -pntlu` | network statistics | Show active listening ports | Mostrar portas ativas de escuta | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 11 | `nslookup [domain]` | name server lookup | Network information | Informação de rede | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 12 | `ping [hostname]` | Packet Internet Groper | Check network status | Verificar status da rede | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 13 | `put [file]` | — | Upload file from local to remote computer | Enviar arquivo de local para remoto | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 14 | `quit` | — | Logout | Sair | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 15 | `traceroute [host]` | trace route | Trace route to host | Rastrear rota até o host | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 16 | `wget [file_url]` | World Wide Web get | Download a file from url | Baixar um arquivo de uma URL | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |
| 17 | `whois [domain]` | who is | Show domain information | Mostrar informações do domínio | [Clique aqui para mais informações](docs/command_reference/2_rede/README.md) |

</div>


## 3. Comandos de usuários e grupos

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `adduser [user]` | — | Add a new user | Adicionar um novo usuário | [Clique aqui para mais informações](docs/command_reference/3_comandos_de_usuarios_e_grupos/README.md) |
| 2 | `useradd [user]` | user add | Add a new user | Adicionar um novo usuário | [Clique aqui para mais informações](docs/command_reference/3_comandos_de_usuarios_e_grupos/README.md) |
| 3 | `chgrp [group] [directory]` | change group | Change directory group | Mudar grupo de diretório | [Clique aqui para mais informações](docs/command_reference/3_comandos_de_usuarios_e_grupos/README.md) |
| 4 | `groupadd [group]` | — | Add a new group | Adicionar um novo grupo | [Clique aqui para mais informações](docs/command_reference/3_comandos_de_usuarios_e_grupos/README.md) |
| 5 | `id` | — | Show active user details | Mostrar detalhes do usuário ativo | [Clique aqui para mais informações](docs/command_reference/3_comandos_de_usuarios_e_grupos/README.md) |
| 6 | `last` | — | Show last system logins | Mostrar últimas entradas no sistema | [Clique aqui para mais informações](docs/command_reference/3_comandos_de_usuarios_e_grupos/README.md) |
| 7 | `passwd [username]` | password | Change the password for the user | Mudar a senha do usuário | [Clique aqui para mais informações](docs/command_reference/3_comandos_de_usuarios_e_grupos/README.md) |
| 8 | `su [user]` | substitute user | Switch user | Trocar de usuário | [Clique aqui para mais informações](docs/command_reference/3_comandos_de_usuarios_e_grupos/README.md) |
| 9 | `userdel [user]` | user delete | Delete a user | Excluir um usuário | [Clique aqui para mais informações](docs/command_reference/3_comandos_de_usuarios_e_grupos/README.md) |
| 10 | `usermod` | user modify | Modify user information | Modificar informações de um usuário | [Clique aqui para mais informações](docs/command_reference/3_comandos_de_usuarios_e_grupos/README.md) |
| 11 | `usermod -aG [group] [user]` | user modify | Add user to group | Adicionar usuário a um grupo | [Clique aqui para mais informações](docs/command_reference/3_comandos_de_usuarios_e_grupos/README.md) |
| 12 | `w` | — | Show logged users and activity | Mostrar usuários logados e atividade | [Clique aqui para mais informações](docs/command_reference/3_comandos_de_usuarios_e_grupos/README.md) |
| 13 | `who` | — | Show who is logged in | Mostrar quem está logado | [Clique aqui para mais informações](docs/command_reference/3_comandos_de_usuarios_e_grupos/README.md) |

</div>


## 4. Comandos de Navegação de Diretórios

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `cd` | — | Move up one level | Subir um nível | [Clique aqui para mais informações](docs/command_reference/4_comandos_de_navegacao_de_diretorios/README.md) |
| 2 | `cd` | — | Change directory to $HOME | Mudar diretório para o $HOME | [Clique aqui para mais informações](docs/command_reference/4_comandos_de_navegacao_de_diretorios/README.md) |
| 3 | `cd [location]` | — | Change to specified directory | Mudar para o diretório especificado | [Clique aqui para mais informações](docs/command_reference/4_comandos_de_navegacao_de_diretorios/README.md) |
| 4 | `pwd` | print working directory | Print working directory | Mostrar o diretório atual | [Clique aqui para mais informações](docs/command_reference/4_comandos_de_navegacao_de_diretorios/README.md) |

</div>


## 5. Informações de Hardware

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `cat /proc/cpuinfo` | concatenate | Show CPU information | Mostrar informações da CPU | [Clique aqui para mais informações](docs/command_reference/5_informacoes_de_hardware/README.md) |
| 2 | `dmesg` | — | Show bootup messages | Mostrar mensagens de inicialização | [Clique aqui para mais informações](docs/command_reference/5_informacoes_de_hardware/README.md) |
| 3 | `dmidecode` | — | Show BIOS hardware info | Mostrar informações de hardware da BIOS | [Clique aqui para mais informações](docs/command_reference/5_informacoes_de_hardware/README.md) |
| 4 | `free -h` | — | Show free and used memory | Mostrar memória livre e usada | [Clique aqui para mais informações](docs/command_reference/5_informacoes_de_hardware/README.md) |
| 5 | `lsblk` | list block devices | Block devices info | Informações de dispositivos de bloco | [Clique aqui para mais informações](docs/command_reference/5_informacoes_de_hardware/README.md) |
| 6 | `lshw` | — | Hardware configuration info | Informações de configuração de hardware | [Clique aqui para mais informações](docs/command_reference/5_informacoes_de_hardware/README.md) |
| 7 | `lsusb -tv` | — | Tree-diagram of USB devices | Diagrama em árvore dos dispositivos USB | [Clique aqui para mais informações](docs/command_reference/5_informacoes_de_hardware/README.md) |
| 8 | `neofetch` | — | Display OS & hardware info | Mostrar informações do SO e hardware | [Clique aqui para mais informações](docs/command_reference/5_informacoes_de_hardware/README.md) |
| 9 | `hdparm -i /dev/[disk]` | — | Show disk data info | Mostrar informações de dados do disco | [Clique aqui para mais informações](docs/command_reference/5_informacoes_de_hardware/README.md) |
| 10 | `hdparm -Tt /dev/[disk]` | — | Disk read speed test | Teste de velocidade de leitura do disco | [Clique aqui para mais informações](docs/command_reference/5_informacoes_de_hardware/README.md) |
| 11 | `badblocks -s /dev/[disk]` | — | Unreadable blocks test | Teste de blocos ilegíveis | [Clique aqui para mais informações](docs/command_reference/5_informacoes_de_hardware/README.md) |

</div>


## 6. Compressão de Arquivos

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `gzip [file]` | GNU zip | Create a gz compressed file | Criar um arquivo comprimido gz | [Clique aqui para mais informações](docs/command_reference/6_compressao_de_arquivos/README.md) |
| 2 | `tar xf [file.tar]` | tape archive | Extract archived file | Extrair arquivo arquivado | [Clique aqui para mais informações](docs/command_reference/6_compressao_de_arquivos/README.md) |
| 3 | `zip`/`unzip` | — | Package & compress files | Empacotar e comprimir arquivos | [Clique aqui para mais informações](docs/command_reference/6_compressao_de_arquivos/README.md) |
| 4 | `tar cf [file.tar] [file]` | tape archive | Create a tar file from a file | Criar um arquivo tar a partir de um arquivo | [Clique aqui para mais informações](docs/command_reference/6_compressao_de_arquivos/README.md) |
| 5 | `tar czf [file.tar.gz]` | tape archive | Create a gzip tar file | Criar um arquivo tar gzip | [Clique aqui para mais informações](docs/command_reference/6_compressao_de_arquivos/README.md) |

</div>


## 7. Instalação de Pacotes

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `apt-get` | Advanced Package Tool (get) | Search for and install software packages | Pesquisar e instalar pacotes de software | [Clique aqui para mais informações](docs/command_reference/7_instalacao_de_pacotes/README.md) |
| 2 | `apt install [package]` | — | Install a package with APT | Instalar um pacote com APT | [Clique aqui para mais informações](docs/command_reference/7_instalacao_de_pacotes/README.md) |
| 3 | `dnf install [package.rpm]` | Dandified YUM | Install a package with DNF | Instalar um pacote com DNF | [Clique aqui para mais informações](docs/command_reference/7_instalacao_de_pacotes/README.md) |
| 4 | `rpm -e [package.rpm]` | RPM Package Manager (sigla histórica) | Remove an rpm package | Remover um pacote rpm | [Clique aqui para mais informações](docs/command_reference/7_instalacao_de_pacotes/README.md) |
| 5 | `rpm -ivh [package.rpm]` | RPM Package Manager (sigla histórica) | Install a local rpm package | Instalar um pacote rpm local | [Clique aqui para mais informações](docs/command_reference/7_instalacao_de_pacotes/README.md) |
| 6 | `yum info [package]` | Yellowdog Updater, Modified | Package info & summary | Informação e resumo do pacote | [Clique aqui para mais informações](docs/command_reference/7_instalacao_de_pacotes/README.md) |
| 7 | `yum install [package]` | Yellowdog Updater, Modified | Install a package with YUM | Instalar um pacote com YUM | [Clique aqui para mais informações](docs/command_reference/7_instalacao_de_pacotes/README.md) |
| 8 | `yum search [package]` | Yellowdog Updater, Modified | Find a package by a keyword | Encontrar um pacote por uma palavra-chave | [Clique aqui para mais informações](docs/command_reference/7_instalacao_de_pacotes/README.md) |

</div>


## 8. Gerenciamento de Sistema

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `cat` | concatenate | Show current day and month | Mostrar dia e mês atuais | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 2 | `cal` | calendar | Show calendar | Mostrar calendário | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 3 | `date` | — | Show current time and date | Mostrar hora e data atuais | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 4 | `finger [username]` | — | Show user information | Mostrar informações do usuário | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 5 | `hostname` | — | Show system hostname | Mostrar nome do host do sistema | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 6 | `hostname -I` | — | Show System IP address | Mostrar endereço IP do sistema | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 7 | `last reboot` | — | Show reboot history | Mostrar histórico de reinicialização | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 8 | `modprobe [module-name]` | module probe | Add a new kernel module | Adicionar um novo módulo do kernel | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 9 | `shutdown [h:mm]` | — | Schedule a system shut down | Agendar desligamento do sistema | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 10 | `shutdown now` | — | Shut down immediately | Desligar imediatamente | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 11 | `ulimit [tags][limit]` | — | Manage the system clock | Gerenciar o relógio do sistema | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 12 | `uname -a` | — | Show kernel release info | Mostrar informações de lançamento do kernel | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 13 | `uname -r` | — | Show system information | Mostrar informações do sistema | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 14 | `uptime` | up time | Show uptime length/avg load | Mostrar tempo de atividade/carga média | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |
| 15 | `whoami` | who am I | Show the current user | Mostrar o usuário atual | [Clique aqui para mais informações](docs/command_reference/8_gerenciamento_de_sistema/README.md) |

</div>


## 9. Permissões de Arquivo

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `chmod 755 [file]` | change mode | Full permission to owner; read permissions for others | Permissão total para o proprietário; permissão de leitura para outros | [Clique aqui para mais informações](docs/command_reference/9_permissoes_de_arquivo/README.md) |
| 2 | `chmod 766 [file]` | change mode | Full permission to owner; read and write for others | Permissão total para o proprietário; leitura e escrita para outros | [Clique aqui para mais informações](docs/command_reference/9_permissoes_de_arquivo/README.md) |
| 3 | `chmod 777 [file]` | change mode | Full read, write, execute permissions to everyone | Permissão total de leitura, escrita e execução para todos | [Clique aqui para mais informações](docs/command_reference/9_permissoes_de_arquivo/README.md) |
| 4 | `chown [user][file]` | change owner | Change file ownership | Mudar a propriedade do arquivo | [Clique aqui para mais informações](docs/command_reference/9_permissoes_de_arquivo/README.md) |
| 5 | `chown [user][group][file]` | change owner | Change file owner and group | Mudar o proprietário do arquivo e grupo | [Clique aqui para mais informações](docs/command_reference/9_permissoes_de_arquivo/README.md) |

</div>


## 10. _Login_ SSH

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `ssh [user]@[host]` | Secure Shell | Connect to host as user | Conectar ao host como usuário | [Clique aqui para mais informações](docs/command_reference/10_login_ssh/README.md) |
| 2 | `ssh [host]` | Secure Shell | Connect to host via port 22 | Conectar ao host via porta 22 | [Clique aqui para mais informações](docs/command_reference/10_login_ssh/README.md) |
| 3 | `telnet [host]` | — | Connect to Telnet via port 23 | Conectar ao Telnet via porta 23 | [Clique aqui para mais informações](docs/command_reference/10_login_ssh/README.md) |
| 4 | `ssh -p [port][user]@[host]` | Secure Shell | Use a non-default port | Usar uma porta não padrão | [Clique aqui para mais informações](docs/command_reference/10_login_ssh/README.md) |

</div>


## 11. Variáveis Bash

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `declare [variable]=[value]` | — | Declare a Bash variable | Declarar uma variável Bash | [Clique aqui para mais informações](docs/command_reference/11_variaveis_bash/README.md) |
| 2 | `echo $[variable]` | — | Display value of the variable | Exibir valor da variável | [Clique aqui para mais informações](docs/command_reference/11_variaveis_bash/README.md) |
| 3 | `export [variable]` | — | Export a Bash variable | Exportar uma variável Bash | [Clique aqui para mais informações](docs/command_reference/11_variaveis_bash/README.md) |
| 4 | `let [variable]=[value]` | — | Assign integer value to var | Atribuir valor inteiro à variável | [Clique aqui para mais informações](docs/command_reference/11_variaveis_bash/README.md) |
| 5 | `set` | — | List variables and functions | Listar variáveis e funções | [Clique aqui para mais informações](docs/command_reference/11_variaveis_bash/README.md) |

</div>


## 12. Transferência de Arquivos

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `scp [file.txt][server:/tmp]` | secure copy | Securely transfer a file | Transferir um arquivo de forma segura | [Clique aqui para mais informações](docs/command_reference/12_transferencia_de_arquivos/README.md) |
| 2 | `rsync -a /location/ /backup/` | remote sync | Sync the contents of a location with the backup directory | Sincronizar os conteúdos de uma localização com o diretório de _backup_ | [Clique aqui para mais informações](docs/command_reference/12_transferencia_de_arquivos/README.md) |

</div>


## 13. Uso de Disco

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `fdisk -l` | fixed disk | Disk partition types and sizes | Tipos e tamanhos de partições de disco | [Clique aqui para mais informações](docs/command_reference/13_uso_de_disco/README.md) |
| 2 | `df -h` | disk free | Show free space on system | Mostrar espaço livre no sistema | [Clique aqui para mais informações](docs/command_reference/13_uso_de_disco/README.md) |
| 3 | `du -ah` | disk usage | Show disk usage for all files | Mostrar uso do disco para todos os arquivos | [Clique aqui para mais informações](docs/command_reference/13_uso_de_disco/README.md) |
| 4 | `du -sh` | disk usage | Show disk usage for current directory | Mostrar uso do disco para o diretório atual | [Clique aqui para mais informações](docs/command_reference/13_uso_de_disco/README.md) |
| 5 | `findmnt` | — | Show target mount point | Mostrar ponto de montagem alvo | [Clique aqui para mais informações](docs/command_reference/13_uso_de_disco/README.md) |
| 6 | `mount [device][mount point]` | mount | Mount a device | Montar um dispositivo | [Clique aqui para mais informações](docs/command_reference/13_uso_de_disco/README.md) |

</div>


## 14. Processos Relacionados

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `bg` | — | List background processes | Listar processos em segundo plano | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 2 | `clear` | clear | Clear terminal screen | Limpar a tela do terminal | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 3 | `fg [job]` | foreground | Bring job to foreground | Trazer trabalho para o primeiro plano | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 4 | `kill [process_id]` | — | Kill the process by ID | Matar o processo pelo ID | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 5 | `pkill [process_name]` | process kill | Kill the process by name | Matar o processo pelo nome | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 6 | `killall [process_name]` | — | Kill all processes by name | Matar todos os processos pelo nome | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 7 | `lsof` | list open files | List files opened by processes | Listar arquivos abertos por processos | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 8 | `ps` | process status | Show active process snapshot | Mostrar instantâneo de processos ativos | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 9 | `pstree` | process tree | Show processes as a tree | Mostrar processos em forma de árvore | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 10 | `top` | table of processes | Show all running processes | Mostrar todos os processos em execução | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 11 | `htop` | Hisham's top | Interactive process viewer | Visualizador interativo de processos | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 12 | `wait` | — | Pause terminal until process completes | Pausar terminal até que o processo seja completado | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 13 | `nice` | nice (prioridade de processo) | Start a process with a given priority | Iniciar um processo com uma prioridade dada | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 14 | `fg` | foreground | Most recent suspended job to foreground | Trabalho suspenso mais recente para o primeiro plano | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 15 | `ps PID` | process status | Give the status of a particular process | Dar o status de um processo específico | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |
| 16 | `renice` | re-nice (alterar prioridade) | Change priority of a running process | Mudar a prioridade de um processo em execução | [Clique aqui para mais informações](docs/command_reference/14_processos_relacionados/README.md) |

</div>


## 15. Comandos de _Shell_

<div align="center">

| # | Comando | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `alias [alias]='[command]'` | — | Create command alias | Criar um alias para comando | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 2 | `at [hh:mm]` | — | Schedule a job | Agendar um trabalho | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 3 | `cp [source] [dest]` | copy | Copy files or directories | Copiar arquivos ou diretórios | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 4 | `diff [file1] [file2]` | difference | Compare files | Comparar arquivos | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 5 | `history` | — | Print command history | Imprimir histórico de comandos | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 6 | `jobs` | — | Display current jobs & status | Mostrar trabalhos atuais e seu status | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 7 | `ln [target] [link_name]` | link | Create links | Criar links | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 8 | `locate [pattern]` | — | Locate files | Localizar arquivos | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 9 | `man [command]` | — | Display command manual | Exibir manual de comando | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 10 | `mv [source] [dest]` | move | Move or rename files | Mover ou renomear arquivos | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 11 | `nano [file]` | — | Open a text editor | Abrir um editor de texto | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 12 | `rm [file]` | remove | Remove files | Remover arquivos | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 13 | `rmdir [dir]` | — | Remove empty directories | Remover diretórios vazios | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 14 | `sed 's/old/new/' [file]` | stream editor | Search and replace | Buscar e substituir | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 15 | `sleep [interval] && [command]` | — | Postpone command execution | Adiar execução de comando | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 16 | `tail [file]` | — | Show last lines of a file | Mostrar as últimas linhas de um arquivo | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 17 | `tee [file]` | T (formato da letra) | Write output to file and terminal | Enviar saída para arquivo e terminal | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 18 | `touch [file]` | — | Create empty file | Criar arquivo vazio | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 19 | `unalias` | — | Remove an alias | Remover um alias | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 20 | `vi [file]` | — | Open a text editor | Abrir um editor de texto | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 21 | `watch -n [interval] [command]` | — | Set interval to run a command | Definir intervalo para executar um comando | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 22 | `awk -f [program.awk] [file]` | Aho, Weinberger e Kernighan | Pattern scanning and processing | Buscar e manipular padrões | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |
| 23 | `jed [file]` | — | Open a text editor | Abrir um editor de texto | [Clique aqui para mais informações](docs/command_reference/15_comandos_de_shell/README.md) |

</div>


## 16. Atalhos de Teclado

<div align="center">

| # | Atalho | Expansão / origem | Descrição em Inglês | Descrição em Português | Mais informações |
| :--: | :--- | :--- | :--- | :--- | :---: |
| 1 | `!!` | Re-executa o último comando no Bash/Zsh | Repeat the last command | Repetir o último comando | [Clique aqui para mais informações](docs/command_reference/16_atalhos_de_teclado/README.md) |
| 2 | `exit` | — | Log out of the session | Encerrar a sessão | [Clique aqui para mais informações](docs/command_reference/16_atalhos_de_teclado/README.md) |
| 3 | `Ctrl + C` | `Control + C` | Kill current process | Interromper o processo atual | [Clique aqui para mais informações](docs/command_reference/16_atalhos_de_teclado/README.md) |
| 4 | `Ctrl + G` | `Control + G` | Exit command history | Sair do histórico de comandos | [Clique aqui para mais informações](docs/command_reference/16_atalhos_de_teclado/README.md) |
| 5 | `Ctrl + K` | `Control + K` | Cut part of the line after the cursor | Recortar o texto após o cursor | [Clique aqui para mais informações](docs/command_reference/16_atalhos_de_teclado/README.md) |
| 6 | `Ctrl + O` | `Control + O` | Run the recalled command | Executar o comando recuperado | [Clique aqui para mais informações](docs/command_reference/16_atalhos_de_teclado/README.md) |
| 7 | `Ctrl + R` | `Control + R` | Recall last command | Pesquisar no histórico de comandos | [Clique aqui para mais informações](docs/command_reference/16_atalhos_de_teclado/README.md) |
| 8 | `Ctrl + U` | `Control + U` | Cut part of the line before the cursor | Recortar o texto antes do cursor | [Clique aqui para mais informações](docs/command_reference/16_atalhos_de_teclado/README.md) |
| 9 | `Ctrl + W` | `Control + W` | Cut the word before the cursor | Recortar a palavra anterior ao cursor | [Clique aqui para mais informações](docs/command_reference/16_atalhos_de_teclado/README.md) |
| 10 | `Ctrl + Y` | `Control + Y` | Paste from clipboard | Colar o texto recortado | [Clique aqui para mais informações](docs/command_reference/16_atalhos_de_teclado/README.md) |
| 11 | `Ctrl + Z` | `Control + Z` | Stop process (can be resumed) | Suspender o processo (pode ser retomado) | [Clique aqui para mais informações](docs/command_reference/16_atalhos_de_teclado/README.md) |
| 12 | `Ctrl + Alt + F7` | `Control + Alt + F7` | Switch to the first graphical terminal | Alternar para o primeiro terminal gráfico | [Clique aqui para mais informações](docs/command_reference/16_atalhos_de_teclado/README.md) |
| 13 | `Ctrl + Alt + F10` | `Control + Alt + F10` | Switch to a virtual console | Alternar para um console virtual | [Clique aqui para mais informações](docs/command_reference/16_atalhos_de_teclado/README.md) |

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
    alias cdaiinspector="cd ~/Documents/UNIVERSITIES/ITA/MESTRADO/eden_denis/thesis/subs/submodules/audithas/"
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
    alias cdnicegui="cd ~/Documents/Downloads/unix/ubuntu/python/nicegui/"
    alias cdniceguisubmodules="cd ~/Documents/Downloads/unix/ubuntu/python/nicegui/subs/submodules"
    alias cdpictures="cd ~/Pictures"
    alias cdsystem="cd /etc/systemd/system/"
    alias cdthesis="cd ~/Documents/UNIVERSITIES/ITA/MESTRADO/eden_denis/thesis/"
    alias cdtrash="trash:///"
    alias cdubuntu='cd ~/Documents/Downloads/unix/ubuntu/'
    alias cdvideos="cd ~/Videos"
    alias df="df -h -T -x tmpfs --total"  # Essa opção exclui sistemas de arquivos do tipo especificado. Por exemplo, `df -x tmpfs` excluirá sistemas de arquivos tmpfs da saída. Este comando exibe uma coluna adicional que indica o tipo de sistema de arquivos, como ext4 ou xfs. Essa opção adiciona uma linha de "total" ao final da saída, exibindo o uso total de espaço em disco em todos os sistemas de arquivos.
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
    _input_device_set() {
        local kind="$1" action="$2" device_ids

        if ! command -v xinput >/dev/null 2>&1; then
            printf 'Erro: xinput não está instalado.\n' >&2
            return 127
        fi

        case "$kind" in
            touchpad|mousepad)
                device_ids=$(xinput list --short | awk '
                    /slave  pointer/ && tolower($0) ~ /touchpad|synaptics|alps|elan|dll[0-9a-f]+:/ {
                        sub(/^.*id=/, ""); sub(/[[:space:]].*$/, ""); print
                    }')
                ;;
            *) printf 'Tipo de dispositivo inválido: %s\n' "$kind" >&2; return 2 ;;
        esac

        if [[ -z "$device_ids" ]]; then
            printf 'Erro: nenhum dispositivo %s foi encontrado pelo xinput.\n' "$kind" >&2
            return 1
        fi

        local device
        while IFS= read -r device; do
            [[ -z "$device" ]] && continue
            if xinput list-props "$device" 2>/dev/null | grep -q 'Synaptics Off'; then
                if [[ "$action" == off ]]; then
                    xinput set-prop "$device" 'Synaptics Off' 1 || return
                else
                    xinput set-prop "$device" 'Synaptics Off' 0 || return
                fi
            elif [[ "$action" == off ]]; then
                xinput disable "$device" || return
            else
                xinput enable "$device" || return
            fi
        done <<< "$device_ids"
    }

    mousepad_off() { _input_device_set mousepad off; }
    mousepad_on()  { _input_device_set mousepad on; }
    touchpad_off() { _input_device_set touchpad off; }
    touchpad_on()  { _input_device_set touchpad on; }

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
    alias codex='command codex -m gpt-6-luna -a never -s danger-full-access'
    alias codex-safe='command codex -m gpt-6-luna'
    alias codex-fast='command codex -m gpt-6-luna'
    alias codex-full='command codex -m gpt-6-luna -a never -s danger-full-access'
    alias codex-yolo='command codex -m gpt-6-luna -a never -s danger-full-access'

    # --- Gemini ---
    alias gemini='command gemini --model gemini-3.5-flash-lite --yolo'
    alias gemini-safe='command gemini --model gemini-3.5-flash-lite'
    alias gemini-fast='command gemini --model gemini-3.5-flash-lite'
    alias gemini-full='command gemini --model gemini-3.5-flash-lite --yolo'
    alias gemini-yolo='command gemini --model gemini-3.5-flash-lite --yolo'

    # --- Android Studio ---
    alias android-studio='/opt/android-studio/bin/studio'

    # ---
    ```



4. Atualizar o `source` do `Terminal Emulator`:

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

[1] OPENAI.
**Instalar o `main linux commands` no `linux ubuntu` pelo `terminal emulator`.**
Disponível em: <https://chatgpt.com/c/66e99b91-aa6c-8002-9401-ccd319b980e3> (texto adaptado).
ChatGPT.
Acessado em: 17/09/2024 15:35.

[2] OPENAI.
**Vs code: editor popular.**
Disponível em: <https://chat.openai.com/c/b640a25d-f8e3-4922-8a3b-ed74a2657e42> (texto adaptado).
ChatGPT.
Acessado em: 17/09/2024 15:35.

[3] USER: ARIS S..
**Top 60 linux commands: what they are and how to use them effectively**.
Disponível em: <https://www.hostinger.com/tutorials/linux-commands?utm_campaign=Generic-Tutorials-DSA-t2|NT:Se|Lang:EN|LO:BR&utm_medium=ppc&gad_source=1&gad_campaignid=20990084344&gbraid=0AAAAADMy-hYSlrOpsfeXBdAXnfXldpB1q&gclid=Cj0KCQiAtfXMBhDzARIsAJ0jp3AEsSUQb1rIe-QbnkGmvmQZE6_Z0EsQCsq1_QWC5ClqOkKkNxyOdvkaAiElEALw_wcB> (texto adaptado).
Acessado em: 24/02/2026.

[4] ROADMAP.SH.
**Linux terminal basics**.
Disponível em: <https://roadmap.sh/ai/course/linux-terminal-basics>. Acessado em: 09/06/2026.
