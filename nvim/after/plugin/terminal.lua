require('utils')

require('toggleterm').setup({
})

-- keybindings to control terminal
Nmap('<leader>t', ':ToggleTerm<CR>')
Map('t', 'jk', [[<C-\><C-n>]], { buffer = 0 })
