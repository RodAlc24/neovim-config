-- General options

local opt = vim.opt -- for conciseness

-- Line numbers
opt.number = true -- Show current line number
opt.relativenumber = true -- Show relative line numbers

-- Tabs and indentation
opt.expandtab = true -- Expand tab to spaces
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- Default indent width
opt.autoindent = true -- Copy indent from current line when starting new one

-- Search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- Cursor line
opt.cursorline = true -- highlight the current cursor line

-- Lines
opt.wrap = true -- Wrap long lines
opt.scrolloff = 5 -- Always keep 5 lines shown under/above the cursor
opt.foldmethod = "marker" -- Automatically identifies folds
opt.signcolumn = "yes" -- Always draw the sign column
opt.cmdheight = 1 -- Small command window

-- Buffers and autosave
opt.hidden = true -- When off a buffer is unloaded when it is abandoned
opt.backup = false -- Don't do backup while saving a file
opt.writebackup = false -- Don't do backup while editing a file
opt.updatetime = 300 -- Time (ms) to write the swap file if nothing is typed

-- Set spell for English and Spanish
opt.spelllang = "es,en" -- Spelling for English and Spanish
opt.spell = false -- Deactivate spell checker

-- Other
opt.mouse = "a" -- Enable mouse support
opt.shortmess:append("c") -- Don't give ins-completion-menu messages
opt.sessionoptions:remove("blank") -- Close an empty window

-- appearance
opt.background = "dark" -- color schemes that can be light or dark will be made dark

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
--opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
