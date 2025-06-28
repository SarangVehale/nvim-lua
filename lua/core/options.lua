local opt = vim.opt -- for conciseness

-- Line numbers
opt.relativenumber = true
opt.number = true

-- Tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Line wrapping
opt.wrap = false

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'

-- Backspace
opt.backspace = 'indent,eol,start'

-- Clipboard
opt.clipboard:append 'unnamedplus'

-- Split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append '-' -- consider string-string as whole word
