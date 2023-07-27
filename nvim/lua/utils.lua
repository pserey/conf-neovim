function Map(mode, shortcut, command, opts)
    local func_opts = opts or { silent = true }
    func_opts['silent'] = true

    vim.keymap.set(mode, shortcut, command, func_opts)
end

function Imap(shorcut, command)
    Map('i', shorcut, command)
end

function Nmap(shorcut, command)
    Map('n', shorcut, command)
end

function Autocmd(event, header)
    vim.api.nvim_create_autocmd(event, header)
end

function Augroup(group_name)
    local group = vim.api.nvim_create_augroup(group_name, { clear = true })
    return group
end

function Command(cmd, func)
  vim.api.nvim_create_user_command(cmd, func)
end
