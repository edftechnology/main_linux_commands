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

# ## Referências
# 
# [1] OPENAI. ***Comandos Linux traduzidos.*** Disponível em: <https://chat.openai.com/c/b315251f-5bf4-48bb-8c0b-d306db412439> (texto adaptado). Acessado em: 02/04/2023 17:11.
# 
# [2] OPENAI. ***Vs code: editor popular.*** Disponível em: <https://chat.openai.com/c/b640a25d-f8e3-4922-8a3b-ed74a2657e42> (texto adaptado). Acessado em: 02/04/2024 17:10.
# 
