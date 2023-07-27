require('utils')

require('toggleterm').setup({
})

-- keybindings to control terminal
Nmap('<leader>t', ':ToggleTerm<CR>')
vim.cmd([[tnoremap jk <C-\><C-n>]])
vim.cmd([[tnoremap <Esc> <C-\><C-n>]])
