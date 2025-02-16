return {
    "rebelot/kanagawa.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    opts = function()
        require("kanagawa").setup({
            transparent = true,
            theme = "wave",
            background = { dark = "wave" },
        })
	    vim.cmd([[colorscheme kanagawa]])
    end,
}
