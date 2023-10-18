return {
  "nvimdev/guard.nvim",
  dependencies = {
    "nvimdev/guard-collection",
  },
  config = function ()
    local guard = require("guard")
    local ft = require('guard.filetype')

    ft('typescript,javascript,typescriptreact'):fmt('prettier')
    ft('css,scss,html'):fmt('prettier')
    ft('rust'):fmt('rustfmt')

    guard.setup({
      fmt_on_save = true,
      lsp_as_default_formatter = true,
    })
  end,
}
