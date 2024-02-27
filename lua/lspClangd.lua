local M = {}

function M.package()
    return {
        { "williamboman/mason.nvim" }, 
        { "williamboman/mason-lspconfig.nvim" },
        { "neovim/nvim-lspconfig" },
    }
end

function M.setup()
    require('mason').setup()
    require('mason-lspconfig').setup()
    require('lspconfig').clangd.setup({})
end

return M
