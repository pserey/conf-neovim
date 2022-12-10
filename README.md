# Neovim config files
> My *Neovim* configuration files.

<div align="center">
  <img src="/assets/nvimp-new-version-example.png" width= "100%" />
</div>

<div>
    <img src="/assets/code-example.png" width= "49.7%" />
    <img src="/assets/code-example-2.png" width= "49.7%" align="right"/>
</div>

## Software requirements before installing

- Neovim >0.5
- Pynvim
- NodeJS and `npm` (Latest version)
- Git
- `xsel`
- Any C compiler (I recommend gcc)
- `ripgrep` and `fd` (if you want the "find word" working)

## Install plugin manager (Vimscript Version - Outdated)

Installing vim-plug is easy, just run the command below:
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

If you are using another OS, make sure to know the right command for it [here](https://github.com/junegunn/vim-plug#neovim).
## Install plugin manager (Lua Version)

Install packer is simple, if you're not on any Arch distro:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

And, if you're using any Arch distro, there's a AUR package. You can install it manually or with any AUR helper like `yay`
```
yay -S nvim-packer-git
```

To install it on any other OS, you can find instructions [here](https://github.com/wbthomason/packer.nvim#quickstart).

## Downloading configs 
- Git clone this repo
```
git clone https://github.com/pserey/conf-neovim
```
- Copy the `nvim` directory (or `nvim-lua`) to `~/.config/nvim`
```
cp -rf conf-neovim/nvim/ ~/.config/
# or
cp -rf conf-neovim/nvim-lua/ ~/.config/nvim
```

## Configuring (Vimscript)
- After that, run the following commands inside neovim:
```
:PlugInstall
:CocInstall coc-pyright
:CocInstall coc-java
:TSInstall java
:TSInstall python

:CocInstall <any language extension you want>
```
> For knowing more **coc.nvim** extensions check [this link](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions).

## Configuring (Lua)
- After that, run the following commands inside neovim:
```
:PackerSync # if it gives any errors, just run it again

# install python coc.nvim extension
:CocInstall coc-pyright

# install java coc.nvim extension
:CocInstall coc-java

# install coc.nvim extension that complete pairs
:CocInstall coc-pairs

# install markdown coc.nvim extension
:CocInstall coc-markdown

# install lua coc.nvim extension (install it if you pretend to mess with configs)
:CocInstall coc-sumneko-lua

# install python TreeSitter parser
:TSInstall python

# install java TreeSitter parser
:TSInstall java

# install lua TreeSitter parser
:TSInstall lua

:CocInstall <any language extension you want>
```
> For knowing more useful **coc.nvim** extensions check [this link](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions).

## Configuring JAVA HOME variable
- And finally, configure your `JAVA_HOME` path in `coc-settings.json`
```
# Change the first line to whatever version of Java you are using and change the
# path to your java in the second line (normally in the same jvm directory)

{
  "name": "JavaSE-16",
  "path": "/usr/lib/jvm/java-16-openjdk",
  "default": true
}
```

## If you pretend messing and adapting this configuration...
If you pretend to adapt this configuration to your taste and needs, consider installing the `lua-language-server` by [@sumneko](https://github.com/sumneko). You can find installing and building instructions here, if you're on Arch or any Arch based distro, you can install [this](https://archlinux.org/packages/community/x86_64/lua-language-server/) arch package:
```
sudo pacman -S lua-language-server
```

## Link to important repos used in this configuration

- [Neovim](https://github.com/neovim/neovim)

- [Packer.nvim](https://github.com/wbthomason/packer.nvim)

- [vim-plug](https://github.com/junegunn/vim-plug)

- [coc.nvim](https://github.com/neoclide/coc.nvim)

- [Gruvbox](https://github.com/morhetz/gruvbox) *(my prefered colorscheme)*

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

- [lua-language-server](https://github.com/sumneko/lua-language-server)

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
sudo pacman -S neovim
sudo pacman -S python
sudo pacman -S python-pip # this is for python3
sudo pacman -S xsel
sudo pacman -S git
sudo pacman -Syu gcc
sudo pacman -S ripgrep
sudo pacman -S fd
```
