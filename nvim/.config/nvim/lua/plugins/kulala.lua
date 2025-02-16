return {
    'mistweaverco/kulala.nvim',
    opts = {
        icons = {
            inlay = {
                loading = "Waiting",
                done = "OK",
                error = "Error",
            },
            lualine = "🐼",
        },
        -- default_view, body or headers or headers_body
        default_view = "body",
        -- dev, test, prod, can be anything
        -- see: https://learn.microsoft.com/en-us/aspnet/core/test/http-files?view=aspnetcore-8.0#environment-files
        default_env = "dev",
        winbar = true,
        default_winbar_panes = { "body", "headers", "headers_body" },

        -- additional cURL options
        -- see: https://curl.se/docs/manpage.html
        additional_curl_options = {},
    },
    keys = {
        {",r", "<cmd>lua require('kulala').run()<CR>"},
        {"<F9>", "<cmd>lua require('kulala').inspect()<CR>"},
    },
}
