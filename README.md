# Neovim config files
> My *Neovim* configuration files.

<img src="/assets/nvimp-init-example.png" width= "100%" />


## Software requirements before installing

- Neovim Nightly Build
- Pynvim
- NodeJS and `npm` (Latest version)
- Git
- Xsel
- Any C compiler (I recommend gcc)
- ripgrep (if you want the "find word" working)

## Install plugin manager

Installing vim-plug is easy, just run the command below:
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
If you are using another OS, make sure to know the right command for it [here](https://github.com/junegunn/vim-plug#neovim).
## Downloading configs 
- Git clone this repo
```
git clone https://github.com/pserey/conf-neovim
```
- Copy only the `nvim` directory inside it to `~/.config/nvim`
```
cp -rf conf-neovim/nvim/ ~/.config/
```

- After that, run the following commands inside neovim:
```
:PlugInstall
:CocInstall coc-pyright
:CocInstall coc-java
:TSInstall java
:TSInstall python

:CocInstall <any language extension you want>
```
For knowing more **coc.nvim** extensions check [this link](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions).

## Link to important repos used in this configuration

- [Neovim](https://github.com/neovim/neovim)

- [vim-plug](https://github.com/junegunn/vim-plug)

- [coc.nvim](https://github.com/neoclide/coc.nvim)

- [Gruvbox](https://github.com/morhetz/gruvbox) *(my prefered colorscheme)*

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

## FAQs
- ### How do I install the latest version of NodeJS if my repositories are not updated?
> you can update the current NodeJS installation with this commands:
```
sudo npm cache clean -f
sudo npm install -g n
sudo n latest
```

- ### When I open nvim, I get parser errors with `uv_dlopen`
> in my case, I solved this using the neovim nightly appimage and after the AUR package. The problem was my `snap` installation.

If you are using any Arch based system:
```
yay -S neovim-nightly-bin
```

- ### How do I install the required software in my PC?
> I'll put some commands for Arch and Ubuntu users, sorry if your distro/OS is not here
Ubuntu/Debian distros:
```
# for neovim I recommend the appimage install, but you can try snap too
sudo snap install --edge nvim --classic

pip install pynvim 
# or
python3 -m pip install pynvim

# for nodeJS and npm (remember to update, apt repositories are not in the last version)
sudo apt install nodejs npm

sudo apt install git
sudo apt install xsel
sudo apt install ripgrep

# if you're using ubuntu or debian, it probably has a c compiler already installed. if not:
sudo apt install build-essential
```
Arch based distros:
```
# for neovim, I recomend appimage or any nightly install from the AUR
yay -S neovim-nightly-bin

sudo pacman -S python3
sudo pacman -S python-pip # this is for python3
sudo pacman -S xsel
sudo pacman -S git
sudo pacman -Syu gcc
sudo pacman -S ripgrep
```
