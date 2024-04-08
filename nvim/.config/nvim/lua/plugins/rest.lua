return {
    {
        "vhyrro/luarocks.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        priority = 1000,
        config = true,
    },
    {
        "rest-nvim/rest.nvim",
        ft = "http",
        dependencies = { "luarocks.nvim" },
        config = function()
            local rest_nvim = require("rest-nvim")
            rest_nvim.setup({
                keybinds = {
                    {
                        ",r", "<cmd>Rest run<cr>", "Run request under the cursor",
                    },
                    {
                        ",rl", "<cmd>Rest run last<cr>", "Re-run latest request",
                    },
                }
            })
        end,
    }
}
