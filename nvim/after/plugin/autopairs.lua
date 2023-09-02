local npairs = require('nvim-autopairs')
local Rule = require('nvim-autopairs.rule')

npairs.add_rules({
  Rule("f'", "'", {'py', 'python'}),
  Rule("r'", "'", {'py', 'python'}),
  Rule("b'", "'", {'py', 'python'}),
  Rule("=f'", "'", {'py', 'python'}),
  Rule("=r'", "'", {'py', 'python'}),
  Rule("=b'", "'", {'py', 'python'}),
  Rule("$", "$", {'md', 'markdown'}),
  Rule("*", "*", {'md', 'markdown'}),
})
