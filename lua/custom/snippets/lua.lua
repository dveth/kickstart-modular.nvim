require('luasnip.session.snippet_collection').clear_snippets 'lua'

local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node

ls.add_snippets('lua', {
  s({ trig = 's(' }, { t "s({ trig = 's(' }, { t '' })," }),
})
