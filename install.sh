# copy nvim to directory
cp -r nvim ~/.config/

# install packer.nvim
mv ~/.local/share/nvim/ ~/.local/share/backup-nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# sync plugins
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
