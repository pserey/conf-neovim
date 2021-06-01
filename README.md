# Configurações de neovim
Minhas configurações de neovim para python

## Instalar software que vai servir de base (já deve ter python e pip instalado)

```
sudo apt install neovim
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

Copiar as configurações para os arquivos plugins.vim, general.vim, mappings.vim e init.vim



## Instalar plugins

começar a editar o arquivo plugins.vim dentro de plugins com nvim
dentro do nvim, dar os seguintes comandos:

```
:so %
:PlugInstall
```

## E, finalmente, instalar a autocompleção:
(dentro do nvim)

```
:CocInstall coc-pyright (precisa de npm)
```

