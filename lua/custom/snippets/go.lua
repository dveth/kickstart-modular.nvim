require('luasnip.session.snippet_collection').clear_snippets 'go'

local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmta

ls.add_snippets('go', {
  s(
    'func',
    fmt('func <FName>(<Params>){\n\t<FBody>\n}\n', {
      FName = i(1, 'Function Name'),
      Params = i(2, 'Parameters'),
      FBody = i(3, 'Function body'),
    })
  ),
  s(
    'test',
    fmt('func <FName>(t *testing.T){\n\t<FBody>\n}\n', {
      FName = i(1, 'Function Name'),
      FBody = i(2, 'Function body'),
    })
  ),
})
