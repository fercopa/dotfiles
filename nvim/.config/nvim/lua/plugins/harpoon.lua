return {
    "ThePrimeagen/harpoon",
    keys = {
        {"<leader>hh", function() require('harpoon.ui').toggle_quick_menu() end, desc = "Harpoon Menu"},
        {",m", function() require('harpoon.mark').add_file() end, desc = "Harpoon Menu"},
        {"<leader>1", function() require('harpoon.ui').nav_file(1) end, desc = "Nav file 1"},
        {"<leader>2", function() require('harpoon.ui').nav_file(2) end, desc = "Nav file 2"},
        {"<leader>3", function() require('harpoon.ui').nav_file(3) end, desc = "Nav file 3"},
        {"<leader>4", function() require('harpoon.ui').nav_file(4) end, desc = "Nav file 4"},
    }
}
