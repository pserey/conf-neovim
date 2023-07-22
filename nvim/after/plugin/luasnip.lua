local ls = require('luasnip')
require('utils')

-- config
ls.setup({
  history = true,
  update_events = 'TextChanged,TextChangedI',

})

-- add vscode snippets to luasnip
require('luasnip.loaders.from_vscode').lazy_load()

-- luasnip keybinds
Imap("<C-K>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end)
Map({"i", "s"}, "<C-L>", function() ls.jump( 1) end)
Map({"i", "s"}, "<C-J>", function() ls.jump(-1) end)

Map({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end)
Nmap('<leader><leader>s', ':so ~/.config/nvim/after/plugin/luasnip.lua<CR>')

-------------------------- SNIPPETS -----------------------------
ls.add_snippets('all', {
})
ls.add_snippets('lua', {
  ls.parser.parse_snippet('lf', 'local function $1($2)\n  $0\nend'),
  ls.parser.parse_snippet('gf', 'function $1($2)\n  $0\nend'),
})
ls.add_snippets('python', {
  ls.parser.parse_snippet('pdb', 'import pdb; pdb.set_trace()')
})
ls.add_snippets('cpp', {
  ls.parser.parse_snippet('cmain', 'int main() {\n    $1\n\n    return 0;\n}'),
})
