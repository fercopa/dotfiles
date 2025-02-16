vim.api.nvim_create_autocmd(
  {"BufEnter", "BufWinEnter"},
  {
    pattern = {"*.tsx", "*.html", "*.js", "*.jsx", "*.css", "*.ts", "*.lua"},
    callback = function()
      vim.opt.expandtab = true
      vim.opt.shiftwidth = 2
      vim.opt.tabstop = 2
      vim.opt.softtabstop = 2
    end,
  })
