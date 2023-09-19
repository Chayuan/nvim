local ft = require('guard.filetype')

-- import guard plugin safely
local setup, guard = pcall(require, "guard")
if not setup then
  return
end

ft('typescript,javascript,typescriptreact'):fmt('prettier')
ft('css,scss,svelte,html'):fmt('prettier')
ft('rust'):fmt('rustfmt')


guard.setup({
  fmt_on_save = true,
  lsp_as_default_formatter = false,
})

