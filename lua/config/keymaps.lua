-- General key maps
-- Not including plugin's key maps

-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

keymap("t", "<ESC>", "<C-\\><C-n>", { desc = "Exit terminal" })

-- Move lines around with ALT + {j,k}
keymap("n", "<A-j>", ":m +1<CR>==", { desc = "Move up" })
keymap("n", "<A-k>", ":m -2<CR>==", { desc = "Move down" })
keymap("i", "<A-j>", "<ESC>:m .+1<CR>==gi", { desc = "Move up" })
keymap("i", "<A-k>", "<ESC>:m .-2<CR>==gi", { desc = "Move down" })
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move up" })
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move down" })

-- Alias awkward movement keys
keymap({ "n", "v" }, "K", "{", { desc = "Go to paragraph backward" })
keymap({ "n", "v" }, "J", "}", { desc = "Go to paragraph forward" })
keymap({ "n", "v" }, "H", "^", { desc = "Go to start of line" })
keymap({ "n", "v" }, "L", "$", { desc = "Go to end of line" })

-- Easier movement in insert mode
keymap("i", "<C-k>", "<Up>", { desc = "Up" })
keymap("i", "<C-j>", "<Down>", { desc = "Down" })
keymap("i", "<C-h>", "<Left>", { desc = "Left" })
keymap("i", "<C-l>", "<Right>", { desc = "Right" })

-- Surrounding characters in visual mode
keymap("v", "<leader>(", "c()<ESC>P", { desc = "Surround with ()" })
keymap("v", "<leader>[", "c[]<ESC>P", { desc = "Surround with []" })
keymap("v", "<leader>{", "c{}<ESC>P", { desc = "Surround with {}" })
keymap("v", '<leader>"', 'c""<ESC>P', { desc = 'Surround with ""' })
keymap("v", "<leader>'", "c''<ESC>P", { desc = "Surround with ''" })
keymap("v", "<leader>`", "c``<ESC>P", { desc = "Surround with ``" })
keymap("v", "<leader>«", "c«»<ESC>P", { desc = "Surround with «»" })
keymap("v", "<leader>$", "c$$<ESC>P", { desc = "Surround with $$" })

-- Use Tab in normal mode
keymap("n", "<Tab>", ">>", { desc = "Indent right" })
keymap("n", "<S-Tab>", "<<", { desc = "Indent left" })
keymap("v", "<Tab>", ">gv", { desc = "Indent right" })
keymap("v", "<S-Tab>", "<gv", { desc = "Indent left" })

-- Spell checker
keymap("n", "<leader>st", "<cmd>set spell!<cr>", { desc = "Spell checker Toggle" })
keymap("n", "<leader>ss", "<cmd>set spell<cr>", { desc = "Spell checker Start" })
keymap("n", "<leader>sq", "<cmd>set nospell<cr>", { desc = "Spell checker stop" })
keymap("n", "<leader>sg", "zg", { desc = "Spell good" })
keymap("n", "<leader>sd", "zw", { desc = "Spell wrong" })
keymap("n", "<leader>sn", "]s", { desc = "Spell next" })
keymap("n", "<leader>sp", "]s", { desc = "Spell previous" })

-- NOTE: The following prefixes are used by plugins or similar commands (not exhaustive list)
-- <leader>t -> Telescope
-- <leader>s -> Spell
-- <leader>g -> Git
