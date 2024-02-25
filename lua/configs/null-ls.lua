local null_ls = require("null-ls")

local opts = {
    sources = {
        null_ls.builtins.formatting.clang_format.with({extra_args={"--style=webkit"}}),
    }
}
vim.keymap.set('n', '<leader>fc', vim.lsp.buf.format, {  })

return opts
