function disable_lsp_for_exam(client, bufnr)
  local filename = vim.api.nvim_buf_get_name(bufnr)
  local basename = vim.fn.fnamemodify(filename, ":t") -- get just the filename
  if basename:match("^exam_") then
    client.stop()
  end
end
return {

  {
    "neovim/nvim-lspconfig",
    keys = {
      {
        "<leader>co",
        LazyVim.lsp.action["source.organizeImports"],
        desc = "Organize Imports",
      },
    },
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        prismals = {},

        tinymist = {},

        biome = {
          cmd = { "npx", "biome", "lsp-proxy" },
        },

        kotlin_language_server = {},

        marksman = {
          filetypes = { "markdown", "quarto" },
          --root_dir = util.root_pattern('.git', '.marksman.toml', '_quarto.yml'),
        },
        vtsls = {
          handlers = {
            ["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
              if result.diagnostics == nil then
                vim.notify("tsserver returned no diagnostics", vim.log.levels.WARN, { title = "LSP: tsserver" })
                return
              end

              -- ignore some tsserver diagnostics
              local idx = 1
              while idx <= #result.diagnostics do
                local entry = result.diagnostics[idx]

                local formatter = require("format-ts-errors")[entry.code]
                entry.message = formatter and formatter(entry.message) or entry.message

                -- codes: https://github.com/microsoft/TypeScript/blob/main/src/compiler/diagnosticMessages.json
                if entry.code == 80001 then
                  -- { message = "File is a CommonJS module; it may be converted to an ES module.", }
                  table.remove(result.diagnostics, idx)
                else
                  idx = idx + 1
                end
              end

              vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
            end,
          },
        },

        sourcekit = {
          filetypes = { "swift" },
          -- cmd = { vim.trim(vim.fn.system("xcrun -f sourcekit-lsp")) },
          on_init = function(client)
            -- HACK: to fix some issues with LSP
            -- more details: https://github.com/neovim/neovim/issues/19237#issuecomment-2237037154
            client.offset_encoding = "utf-8"
          end,
        },
      },
      setup = {
        tsserver = function(_, opts)
          require("typescript").setup({ server = opts })
          return true
        end,
        clangd = function(_, opts)
          opts.on_attach = function(client, bufn)
            disable_lsp_for_exam(client, bufn)
          end
        end,
      },
    },
  },
}
