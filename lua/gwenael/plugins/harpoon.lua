-- import gitsigns plugin safely
local setup, harpoon = pcall(require, "harpoon")
if not setup then
	return
end

-- configure/enable gitsigns
harpoon.setup({})
