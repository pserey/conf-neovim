require('utils')

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- keymappings
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  Nmap('<C-t>', api.tree.change_root_to_parent)
  Nmap('?',     api.tree.toggle_help)
end

-- empty setup using defaults
require("nvim-tree").setup({
  on_attach = my_on_attach,
  view = {
    side = 'right'
  },
  renderer = {
    group_empty = true,
  }
})

Nmap('<leader>j', ':NvimTreeToggle<CR>')

-- OR setup with some options
-- require("nvim-tree").setup({
--   sort_by = "case_sensitive",
--   view = {
--     width = 30,
--   },
--   renderer = {
--     group_empty = true,
--   },
--   filters = {
--     dotfiles = true,
--   },
-- })
