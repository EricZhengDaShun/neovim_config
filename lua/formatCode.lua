local M = {}

function M.package()
    return { "jose-elias-alvarez/null-ls.nvim", 
             event = "VeryLazy",
             opts = function()
                return M.opts()
             end,
           }
end

function M.setup()
    vim.keymap.set('n', '<leader>fc', vim.lsp.buf.format, {  })
end

function M.opts()
    local null_ls = require("null-ls")

    local opts = {
        sources = {
            null_ls.builtins.formatting.clang_format.with({extra_args={"--style=webkit"}}),
        }
    }
    return opts
end

return M
