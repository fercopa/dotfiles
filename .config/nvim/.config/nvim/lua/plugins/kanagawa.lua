return {
    "rebelot/kanagawa.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    opts = function()
	    vim.cmd([[colorscheme kanagawa]])
    end,
}
