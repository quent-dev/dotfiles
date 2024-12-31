local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number =true

-- Tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
vim.bo.softtabstop = 2

-- Line wrapping
opt.wrap = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- Cursor Line
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.conceallevel = 2 -- for Markdown
opt.showmode = false
--vim.diagnostics.config {
--  float = {border = "rounded" }, --add border to diagnostic popups
--}

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split Windows
opt.splitright = true
opt.splitbelow = true

