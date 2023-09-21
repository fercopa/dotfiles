vim.g.mapleader = " "

vim.scriptencoding = "utf-8"

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.completeopt = {"menu", "menuone", "noselect"}
vim.opt.clipboard = "unnamedplus"
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 5
vim.opt.backupskip = "/tmp/*,/private/tmp/*"
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.ai = true
vim.opt.splitright = true
vim.opt.colorcolumn = "100"
vim.opt.wrap = false
vim.opt.mouse = {}
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append { "**" } -- Finding files  - Search down into subfolder
vim.opt.wildignore:append { "*/node_modules/*" }
vim.opt.swapfile = false
vim.opt.updatetime = 100

vim.cmd 'au FileType python map <silent> ,b Oimport ipdb; ipdb.set_trace()<esc>'
