return {
    "rebelot/kanagawa.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    opts = function()
        require("kanagawa").setup({
            transparent = true,
        })
	    vim.cmd([[colorscheme kanagawa]])
    end,
}
