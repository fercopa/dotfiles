return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = function()
        local actions = require("telescope.actions")
        return {
            defaults = {
                file_ignore_patterns = {"tags", "node_modules", ".venv", "venv", ".git"},
                path_display = {"truncate"},
                mappings = {
                    n = {
                        ["q"] = actions.close
                    },
                    i = {
                        ["<UP>"] = actions.preview_scrolling_up,
                        ["<DOWN>"] = actions.preview_scrolling_down,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                    },
                },
                -- layout_strategy = "horizontal",
                layout_strategy = "vertical",
                layout_config = {
                    horizontal = {
                        width = 0.95,
                        preview_width = 0.6,
                        height = 0.99,
                        preview_height = 0.7,
                    },
                    vertical = {
                        width = 0.95,
                        height = 0.95,
                        preview_width = 0.9,
                        preview_height = 0.75,
                    },
                }
            },
            pickers = {
                find_files = {
                    hidden = true,
                },
            },
        }
    end,
    keys = function()
        local builtin = require("telescope.builtin")
        return {
            {"<leader>ff", builtin.find_files, desc = "Find Files"},
            {"<leader>fg", builtin.live_grep, desc = "Live grep"},
            {"<leader>fb", builtin.buffers, desc = "Buffers"},
            {"<leader>fh", builtin.help_tags, desc = "Help Tags"},
            {"<leader>fw", function() builtin.grep_string() end, desc = "Find word under cursor"},
            {"<leader>lD", function() builtin.diagnostics() end, desc = "Search diagnostics"},
        }
    end,
}
