return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup{
      ensure_installed = {
        "lua_ls",
        "ruff",
        "pylsp",
        "pyright",
        "eslint",
        "ts_ls",
      },
      automatic_installation = true,
    }
    require('lspconfig').ruff.setup {
      -- cmd = {"ruff", "server", "--config", "./ruff.toml"}
    }
    require("lspconfig").pylsp.setup {
      settings = {
        pylsp = {
          plugins = {
            pycodestyle = {enabled = false},
            -- pylint = {enabled = false},
            -- flake8 = {enabled = true},
            -- yapf = {enabled = false},
            -- isort = {enabled = true},
            -- mypy = {enabled = true},
          }
        }
      }
    }
    -- require("lspconfig").pyright.setup {}
    require("lspconfig").ts_ls.setup {}
    require("lspconfig").eslint.setup {}
    require("lspconfig").lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }
  end,
}
