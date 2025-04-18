return {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = function()
        function _G.set_terminal_keymaps()
            local opts = { noremap = true }
            vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
            -- vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
            --   vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
            --   vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
            --   vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
            --   vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
        end

        vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

        return {
            highlights = {
                Normal = {link = "Normal"},
                NormalNC = {link = "NormalNC"},
                NormalFloat = {link = "NormalFloat"},
                FloatBorder = {link = "FloatBorder"},
                StatusLine = {link = "StatusLine"},
                StatusLineNC = {link = "StatusLineNC"},
                WinBar = {link = "WinBar"},
                WinBarNC = {link = "WinBarNC"},
            },
            size = 10,
            on_create = function()
                vim.opt.foldcolumn = "0"
                vim.opt.signcolumn = "no"
            end,
            open_mapping = [[<F7>]],
            shading_factor = 2,
            direction = "float",
            float_opts = {border = "rounded"},
        }
    end
}
