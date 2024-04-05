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
                "ruff_lsp",
                "pyright",
            },
            automatic_installation = true,
        }
        local on_attach = function(client, bufnr)
            if client.name == 'ruff_lsp' then
                client.server_capabilities.hoverProvider = false
            end
        end
        require("lspconfig").ruff_lsp.setup {
            on_attach = on_attach,
            init_options = {
                settings = {
                    -- Any extra CLI arguments for `ruff` go here.
                    args = {},
                }
            }
        }
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }
        require('lspconfig').pyright.setup {
            capabilities = capabilities,
            settings = {
                pyright = {
                    -- Using Ruff's import organizer
                    disableOrganizeImports = true,
                },
                python = {
                    analysis = {
                        -- Ignore all files for analysis to exclusively use Ruff for linting
                        -- ignore = { '*' },
                        diagnosticSeverityOverrides = {
                            reportUnusedVariable = false,
                        }
                    },
                },
            },
        }
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
