vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>kh", "<C-w>v")
keymap.set("n", "<leader>w", ":close<CR>")

-- nvim-tree
keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fk", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>kc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>kb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>kh", "<cmd>Telescope help_tags<cr>")

-- split windws
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
