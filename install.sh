#!/bin/bash 
# Author:	Tur1st4
# Help:		Install my config Vim CLI
# Versão:	0.0.001
# Licença:	MIT License

# Copia a pasta e o arquivo de configuração do Vim para o diretório do seu usuário

cp -r $(pwd)/.vim/ ~/
cp -r $(pwd)/.vimrc ~/

# Instala os Plugins necessários

vim :PluginInstall

# Baixa as fontes do Poweline e adicionais

git clone https://github.com/terroo/fonts.git

# Instala as fontes

cd fonts/fonts && cp *.ttf *.otf $HOME/.local/share/fonts/

# "Carrega" as novas fontes instaladas

fc-cache -fv
