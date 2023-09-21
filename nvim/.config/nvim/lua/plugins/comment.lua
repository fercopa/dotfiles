return {
    "numToStr/Comment.nvim",
    keys = {
        {
            "<leader>/",
            function()
                require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
            end,
            desc = "Toggle comment line"
        },
        {
            "<leader>/",
            "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
            mode = "v",
            desc = "Toggle comment for selection"
        },
    }
}
