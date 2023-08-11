return {
  {
    "neovim/nvim-lspconfig",
    config = function(plugin, opts)
      require("plugins.configs.lspconfig")(plugin, opts)
      local lspconfig = require "lspconfig"
      lspconfig.pyright.setup{
        settings = {
          pyright = {
            autoImportCompletion = true,
          },
          python = {
            analysis = {
              autoSearchPaths = true,
              diagnosticMode = 'openFilesOnly',
              useLibraryCodeForTypes = true,
              typeCheckingMode = 'off'
            }
          }
        }
      }
    end
  }
}
