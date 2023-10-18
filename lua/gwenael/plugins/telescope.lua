return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local telescope = require("telescope") 
    local actions = require("telescope.actions") 
    
    telescope.load_extension("fzf")
    -- configure telescope
    telescope.setup({
      -- configure custom mappings
      defaults = {
        path_display = { "truncate" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
          },
        },
      },
    })

    -- set keymaps
    local keymap = vim.keymap

    keymap.set("n", "<leader>ko", "<cmd>Telescope find_files<cr>")
    keymap.set("n", "<leader>kf", "<cmd>Telescope live_grep<cr>")
    keymap.set("n", "<leader>kc", "<cmd>Telescope grep_string<cr>")
    keymap.set("n", "<leader>kb", "<cmd>Telescope buffers<cr>")
  end,
}
