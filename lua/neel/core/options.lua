local opt = vim.opt -- for conciseness

-- line numbers
opt.rnu = true
opt.nu = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- binding symbol to word
opt.iskeyword:append("-")

-- setting font
opt.guifont = "droidsansmono nerd:h17"

-- setting scroll
opt.scrolloff = 999
