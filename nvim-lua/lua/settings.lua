-- require utils with functions that make configuration easier
require('utils')

--------------------------------- SETTINGS -------------------------------------
vim.o.hidden = true -- required to keep multiple buffers open
vim.o.ruler = true -- show the cursos position all the time
vim.o.smarttab = true
vim.o.expandtab = true -- converts tabs to spaces
vim.o.smartindent = true -- makes indenting smart
vim.o.autoindent = true -- good auto indent
vim.o.number = true -- show line numbers
vim.cmd("set nobackup") -- recommended by coc
vim.cmd("set nowritebackup") -- recommended by coc
vim.opt.encoding = "utf-8" -- the encoding displayed
vim.o.fileencoding = "utf-8" -- the file encoding
vim.o.updatetime = 300 -- faster completion
vim.o.timeoutlen = 500 -- timeoutlen by default is 1000ms
vim.opt.clipboard = 'unnamedplus' -- vim.opt.clipboard = "unnamedplus"
vim.o.mouse = 'a' -- activate mouse support
vim.o.showtabline = 2 -- always shows tabs
vim.o.background = "dark" -- background color defined in neovim
vim.o.laststatus = 0 -- always display status line
vim.o.shiftwidth = 4 -- character space for indentation
vim.o.conceallevel = 0 -- for markdown and other text editing
vim.cmd("set t_Co=256") -- support to 256 colors
vim.cmd("set iskeyword+=-") -- treat dash separated words as word text object
vim.o.termguicolors = true -- required by nvim colorizer

--------------------------------- MAPPING -------------------------------------
-- I hate escape.
imap('jk', '<ESC>')
-- set leader as space
vim.g.mapleader = " "
-- leader + h will turn off highlighting
nmap('<leader>h', ':noh<CR>')
-- leader + r will reload init.lua
nmap('<leader>r', ':so ~/.config/nvim/init.lua<CR>')
-- tab will move to the next buffer
map('n', '<TAB>', ':bnext<CR>')
-- better tabbing
map('v', '<', '<gv')
map('v', '>', '>gv')
-- mapping enter to coc complete
vim.cmd([[ inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>" ]])
-- x does not yank
nmap('x', '"_x')
--------------------------------- AUTOCOMMANDS -------------------------------------
-- python autocommands
local python = vim.api.nvim_create_augroup("Python", { clear = true })
autocmd({ 'BufNewFile', 'BufRead' }, { pattern = { '*.py' }, command = 'set softtabstop=4', group = python })

--------------------------------- MISCELLANEOUS -------------------------------------
-- make readonly files editable without root neovim
vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})
