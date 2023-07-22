local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

cmp.setup({
  mapping = {
    ['<TAB>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'async_path' },
    { name = 'nvim_lsp'},
    { name = 'luasnip'},
    { name = 'nvim_lua'}
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  }
})
