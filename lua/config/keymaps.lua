-- General key maps
-- Not including plugin's key maps

-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

keymap("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap("t", "<ESC>", "<C-\\><C-n>", { desc = "Exit terminal" })

-- Clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Splits
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tabs
keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

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

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Down window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Up window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Right window" })

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

-- Set a key map to call the toggle_spell_check function
keymap("n", "<leader>ñ", ":set spell!<CR>", { desc = "Toggle spell checker" })

-- clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
