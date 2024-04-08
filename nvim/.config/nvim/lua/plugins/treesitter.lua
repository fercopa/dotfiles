return {
    "nvim-treesitter/nvim-treesitter",
    -- priority = 1000,
    -- cmd = {
    --     "TSInstall",
    --     "TSUninstall",
    --     "TSUninstallInfo",
    --     "TSUpdate",
    --     "TSUpdateSync",
    -- },
    build = ":TSUpdate",
    event = "VeryLazy",
    main = "nvim-treesitter.configs",
    opts =  {
        ensure_installed = {
            "lua",
            "vim",
            "json",
            "python",
            "javascript",
            "http",
            "jq",
            "java",
        },
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
        autotag = {enable = true},
    }
}
