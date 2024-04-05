return {
    n = {
        ["<C-l>"] = {":noh<cr>", desc = "Clean Search"},
        ["[d"] = {function() vim.diagnostic.goto_prev() end, desc = "Previous diagnostic"},
        ["]d"] = {function() vim.diagnostic.goto_next() end, desc = "Previous diagnostic"},
        ["gl"] = {function() vim.diagnostic.open_float() end, desc = "Hover diagnostics"},
        [",la"] = {function() vim.lsp.buf.code_action() end, desc = "LSP Code Action"},
    },
}
