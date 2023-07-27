require('utils')

-- imports and aliases
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

-- config
ls.setup({
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
  ls.parser.parse_snippet('pdb', 'import pdb; pdb.set_trace()'),
  ls.parser.parse_snippet('init', 'def __init__(self, $1):\n    ${2|pass|}')
})
ls.add_snippets('cpp', {
  ls.parser.parse_snippet('cmain', 'int main() {\n    $1\n\n    return 0;\n}'),
})
