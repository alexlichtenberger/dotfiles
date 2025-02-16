-- enable nerd font
vim.g.have_nerd_font = true

-- enable folding, but not by default
vim.opt.foldenable = false
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

-- (relative) numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- spaces, and only 2 of them
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- enable the mouse
vim.opt.mouse = "a"

-- enable system clipboard
vim.opt.clipboard = "unnamedplus"

-- case sometimes-sensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- always show the sign column
vim.opt.signcolumn = "yes"

-- decrease delays for snappier experience
vim.opt.updatetime = 250

-- increase timeout len for surround
vim.opt.timeoutlen = 2000

-- splits open right and down
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Show special tabs and trailing spaces visually so you don't accidentally use them
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- show line that cursor is on
vim.opt.cursorline = true

-- scroll offset
vim.opt.scrolloff = 10

-- search highlights
vim.opt.hlsearch = true
