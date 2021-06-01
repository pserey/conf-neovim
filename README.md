# Configurações de neovim
Minhas configurações de neovim para *python* e *java*

## Instalar software que vai servir de base (já deve ter python e pip instalado)

```
sudo snap install --edge nvim --classic 
sudo apt install xsel
sudo apt install npm
sudo apt install git
sudo apt install nodejs
```

## NodeJS não vem na última versão então tem que atualizar para a mais recente:

```
sudo npm cache clean -f
sudo npm install -g n
sudo n latest (comando para atualizar para o nodejs 12)
```

```
python3 -m pip install pynvim
```

## Criar diretórios de organização do neovim

pasta “nvim” dentro de ~/.config:


## Criação de diretórios:

```
mkdir ~/.config/nvim
cd nvim
mkdir general
mkdir plugins
mkdir keys
```

## Criação de arquivos:
De dentro da pasta nvim:
```
touch init.vim
touch general/settings.vim
touch plugins/plugins.vim
touch keys/mappings.vim
```
Sua estrutura de diretórios deve ficar assim:
<p>
<img width="500" height="300" src="/assets/treefolders.png">
</p>

## Instalar gerenciador de plugins

basta dar os dois comandos abaixo:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Copiar o texto dos arquivos de configurações ou baixar meus arquivos do repositório.



## Instalar plugins
_comando para ser rodado dentro do nvim_
```
:so %
:PlugInstall
```

## Instalar as extensões de autocompleção para as linguagens 
_comando para ser rodado dentro do nvim_
```
:CocInstall coc-pyright
:CocInstall coc-java
```

## Links para repositórios de plugins e afins

- Neovim
https://github.com/neovim/neovim#install-from-source

- vim-plug
https://github.com/junegunn/vim-plug

- coc.nvim
https://github.com/neoclide/coc.nvim

- Gruvbox (paleta de cores que uso)
https://github.com/morhetz/gruvbox

- Treesitter (highliting melhorado)
https://github.com/nvim-treesitter/nvim-treesitter
