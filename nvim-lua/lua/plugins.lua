--------------------------------- PLUGIN CONFIGS -------------------------------------
-- comment this out before using Packer.nvim for the first time
require('config')

--------------------------------- USED PLUGINS -------------------------------------
return require('packer').startup(function(use)
    -- packer can manage itself
    use 'wbthomason/packer.nvim'
    -- colorscheme
    use 'morhetz/gruvbox'
    use 'norcalli/nvim-colorizer.lua'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'neoclide/coc.nvim', branch = 'release' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    -- telescope fuzzy finder for dashboard
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'glepnir/dashboard-nvim'
    use 'tpope/vim-commentary'
    use 'lambdalisue/suda.vim'
end)
