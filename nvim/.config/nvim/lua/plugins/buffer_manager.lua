return {
    "j-morano/buffer_manager.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = true,
    keys = {
        {
            "<leader>bb",
            function() require("buffer_manager.ui").toggle_quick_menu() end,
            desc = "Menu Buffers",
        },
        {"<leader>c", "<cmd>bd<cr>", desc = "Close current buffer"},
        {
            "[b",
            function() require("buffer_manager.ui").nav_prev() end,
            desc = "Previous buffer",
        },
        {
            "]b",
            function() require("buffer_manager.ui").nav_next() end,
            desc = "Next buffer",
        },
        {
            "<leader>bf",
            function() require("telescope.builtin").buffers() end,
            desc = "Telescope Buffer",
        },
    }
}
