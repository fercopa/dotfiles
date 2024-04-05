return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim"
    },
    config = function()
        telescope = require("telescope")
        telescope.setup {
            extensions = {
                file_browser = {
                    dir_icon = ""
                }
            }
        }
        telescope.load_extension("file_browser")
    end,
    keys = {
        {"<leader>sf", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", desc = "File Browser"},
    },
}
