return {
    "tpope/vim-fugitive",
    cmd = {"G", "G blame"},
    keys = {
        {",gi", ":tab G<CR>", desc = "Git"},
        {",gb", ":G blame<CR>", desc = "Git Blame"},
    }
}
