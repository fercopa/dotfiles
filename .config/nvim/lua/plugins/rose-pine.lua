return {
    "rose-pine/neovim",
    name = "rose-pine",
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
	    vim.cmd([[colorscheme rose-pine]])
    end,
}
