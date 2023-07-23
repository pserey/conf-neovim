-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme and colors
  use 'ellisonleao/gruvbox.nvim'
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  }

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Edit readonly files with input of password
  use 'lambdalisue/suda.vim'

  -- Post-install/update hook with neovim command
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  -- Autopairs
  use {
      "windwp/nvim-autopairs",
      config = function()
        require("nvim-autopairs").setup {}
      end
  }

  -- modded LSP zero
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'hrsh7th/cmp-nvim-lua'},
      {
        'L3MON4D3/LuaSnip',
        tag = 'v2.*',
        requires = {
          {'rafamadriz/friendly-snippets'}
        },
        run = 'make install_jsregexp'
      },
      {'saadparwaiz1/cmp_luasnip'},
      {'FelipeLema/cmp-async-path'}
    }
  }

  -- vim commentary
  use 'tpope/vim-commentary'

  -- markdown preview
  use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })

  -- nvim tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    }
  }

  -- terminal screen split
  use { "akinsho/toggleterm.nvim", tag = '*' }
end)
