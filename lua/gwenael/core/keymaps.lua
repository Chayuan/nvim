vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

-- keymap.set("n", "<leader>kh", "<C-w>v")
keymap.set("n", "<leader>w", ":close<CR>")

-- nvim-tree
keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
keymap.set("n", "<leader>r", ":NvimTreeFindFile<CR>")

-- split windws
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
