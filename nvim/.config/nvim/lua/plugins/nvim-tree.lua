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
        {"<F3>", "<cmd>Neotree reveal toggle=true<CR>", desc = "Neo Tree"},
    },
    config = function()
        require("neo-tree").setup(
            {
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
