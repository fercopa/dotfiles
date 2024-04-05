return {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        null_ls = require('null-ls')
        null_ls.setup({
            ft = {"python"},
            sources = {
                null_ls.builtins.formatting.black,
                null_ls.builtins.diagnostics.flake8,
            },
            diagnostics_format = "[#{s}] #{c} (#{m})"
        })
    end,
}
