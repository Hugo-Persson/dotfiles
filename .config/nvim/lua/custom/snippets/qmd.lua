local ls = require("luasnip")
local ls = require("luasnip")
ls.filetype_extend("quarto", { "markdown" })

-- Add Quarto-specific snippets here
ls.add_snippets("quarto", {
  -- Example snippet: Code block
  ls.snippet("codeblock", {
    ls.text_node("```{" .. vim.bo.filetype .. "}"),
    ls.insert_node(1),
    ls.text_node("```"),
  }),
})
ls.filetype_extend("quarto", { "markdown" })
