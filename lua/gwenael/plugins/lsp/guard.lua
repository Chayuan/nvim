-- return {
--   "nvimdev/guard.nvim",
--   dependencies = {
--     "nvimdev/guard-collection",
--   },
--   config = function ()
--     local guard = require("guard")
--     local ft = require('guard.filetype')
--
--     ft('typescript,javascript,typescriptreact'):fmt('prettier')
--     ft('css,scss,html'):fmt('prettier')
--     ft('rust'):fmt('rustfmt')
--
--     guard.setup({
--       fmt_on_save = true,
--       lsp_as_default_formatter = true,
--     })
--   end,
-- }
--
return {
  'stevearc/conform.nvim',
  config = function() 
    require("conform").setup({
      formatters_by_ft = {
      lua = { "stylua" },
      -- Conform will run multiple formatters sequentially
      python = { "isort", "black" },
      -- Use a sub-list to run only the first available formatter
      javascript = { { "prettierd", "prettier" } },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_fallback = true,
    },
  })
  end,
}
