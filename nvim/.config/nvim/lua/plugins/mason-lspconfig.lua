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
        -- "pyright",
        "eslint",
        "ts_ls",
      },
      automatic_installation = true,
    }
    require('lspconfig').ruff.setup({
      init_options = {
        settings = {
          -- Enable formatting
          format = {
            enabled = true,
          },
        }
      }
    }) 
    local venv_path = os.getenv("VIRTUAL_ENV")
    local python_path = nil
    if venv_path ~= nil then
      python_path = venv_path .. "/bin/python"
    else
      python_path = vim.g.python3_host_prog
    end
    require("lspconfig").pylsp.setup {
      settings = {
        pylsp = {
          plugins = {
            pycodestyle = {enabled = false},
            pyflakes = {enabled = false},
            -- pylint = {enabled = false},
            -- flake8 = {enabled = true},
            -- yapf = {enabled = false},
            -- isort = {enabled = true},
            pylsp_mypy = {
              enabled = true,
              overrides = { "--python-executable", python_path, true },
              report_progress = true,
              live_mode = false,
            },
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
