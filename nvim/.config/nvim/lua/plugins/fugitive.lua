return {
    "tpope/vim-fugitive",
    cmd = {"G", "G blame"},
    keys = {
        {",gi", ":G<CR>", desc = "Git"},
        {",gb", ":G blame<CR>", desc = "Git Blame"},
    }
}
