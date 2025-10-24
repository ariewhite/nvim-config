vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4 
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = false
vim.opt.smarttab = true
vim.opt.list = true
vim.opt.listchars = "eol:.,tab:>-,trail:~,extends:>,precedes:<"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes:1"
vim.opt.scrolloff = 8
vim.opt.showcmd = true

vim.opt.swapfile = true
vim.opt.backup = false
vim.opt.undodir = os.getenv("USERPROFILE") .. "/AppData/Local/nvim/undodir"
vim.opt.undofile = true
vim.opt.clipboard = "unnamed"

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.showmode = false

vim.cmd([[autocmd FileType * set formatoptions-=ro]])
