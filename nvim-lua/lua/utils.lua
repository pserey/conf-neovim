function map(mode, shorcut, command)
    vim.api.nvim_set_keymap(mode, shorcut, command, { noremap = true })
end

function imap(shorcut, command)
    map('i', shorcut, command)
end

function nmap(shorcut, command)
    map('n', shorcut, command)
end

function autocmd(event, header)
    vim.api.nvim_create_autocmd(event, header)
end
