local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

Profile = {
  SERVER = "Server",
  DEV = "Dev",
}

function GetProfile()
  local profile = vim.fn.system("get-profile.sh")
  profile = string.gsub(profile, "\n", "")
  return profile
end
function GetServerOnlyExtras()
  if GetProfile() ~= Profile.SERVER then
    return {}
  end
  return {
    { import = "plugins.server" },
  }
end
function GetDevOnlySpec()
  if GetProfile() ~= Profile.DEV then
    return {}
  end
  return {

    -- Extras
    { import = "lazyvim.plugins.extras.formatting.prettier" },
    { import = "lazyvim.plugins.extras.test.core" },
    { import = "lazyvim.plugins.extras.dap.core" },
    { import = "lazyvim.plugins.extras.lang.astro" },
    { import = "lazyvim.plugins.extras.lang.clangd" },
    { import = "lazyvim.plugins.extras.lang.cmake" },
    { import = "lazyvim.plugins.extras.lang.go" },
    { import = "lazyvim.plugins.extras.lang.java" },
    { import = "lazyvim.plugins.extras.lang.kotlin" },
    { import = "lazyvim.plugins.extras.lang.tailwind" },
    { import = "lazyvim.plugins.extras.lang.python" },
    { import = "lazyvim.plugins.extras.lang.rust" },
    { import = "lazyvim.plugins.extras.lang.sql" },
    { import = "lazyvim.plugins.extras.lang.tex" },
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.linting.eslint" },

    -- My config
    { import = "plugins.dev" },
  }
end
function GetSharedSpec()
  return {
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.ui.mini-animate" },
    { import = "lazyvim.plugins.extras.coding.mini-comment" },
    { import = "lazyvim.plugins.extras.coding.mini-surround" },

    { import = "lazyvim.plugins.extras.lang.toml" },
    { import = "lazyvim.plugins.extras.lang.yaml" },
    { import = "lazyvim.plugins.extras.ai.copilot" },

    { import = "lazyvim.plugins.extras.lang.git" },
    { import = "lazyvim.plugins.extras.lang.markdown" },

    -- Nice colors
    { import = "lazyvim.plugins.extras.util.mini-hipatterns" },

    -- Dot file support https://www.lazyvim.org/extras/util/dot
    { import = "lazyvim.plugins.extras.util.dot" },

    { import = "lazyvim.plugins.extras.formatting.prettier" },

    { import = "lazyvim.plugins.extras.coding.luasnip" },
    { import = "lazyvim.plugins.extras.coding.neogen" },
    { import = "lazyvim.plugins.extras.coding.nvim-cmp" },
    { import = "lazyvim.plugins.extras.coding.yanky" },
    { import = "lazyvim.plugins.extras.editor.telescope" },
    { import = "lazyvim.plugins.extras.lang.docker" },

    -- My spec
    --
    { import = "plugins.shared" },
  }
end

function getSpec()
  local s = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- https://www.lazyvim.org/extras/ui/treesitter-context
    { import = "lazyvim.plugins.extras.ui.treesitter-context" },
  }
  -- Merge tables from GetSharedSpec
  for _, item in ipairs(GetSharedSpec()) do
    table.insert(s, item)
  end

  -- Merge tables from GetDevOnlySpec
  for _, item in ipairs(GetDevOnlySpec()) do
    table.insert(s, item)
  end

  -- Include server extras if applicable
  for _, item in ipairs(GetServerOnlyExtras()) do
    table.insert(s, item)
  end
  table.insert(s, { import = "plugins" })

  -- Debug: Write to a file
  -- local file = io.open(vim.fn.stdpath("cache") .. "/lazy_spec_debug.lua", "w")
  -- if file then
  --   file:write(vim.inspect(s))
  --   file:close()
  --   print("Debug spec written to: " .. vim.fn.stdpath("cache") .. "/lazy_spec_debug.lua")
  -- end

  return s
end

require("lazy").setup({
  spec = getSpec(),
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = {} },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
