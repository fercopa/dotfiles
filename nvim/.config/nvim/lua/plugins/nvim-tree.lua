return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    keys = {
        {"<F3>", "<cmd>Neotree toggle reveal<CR>", desc = "Neo Tree"},
    },
    config = function()
        require("neo-tree").setup(
            {
                buffers = {
                    follow_current_file = {
                        enabled = true, -- This will find and focus the file in the active buffer every time
                        --              -- the current file is changed while the tree is open.
                        leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
                    },
                },
                sort_by = "case_sensitive",
                view = {
                    width = 40,
                    mappings = {
                        list = {
                            { key = "u", action = "dir_up" },
                        },
                    },
                },
            }
        )
    end,
}
