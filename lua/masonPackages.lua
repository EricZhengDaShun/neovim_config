local M = {}

function M.package()
    return {
             { "williamboman/mason.nvim" }, 
           }
end

function M.setup()
    require('mason').setup()
end

return M
