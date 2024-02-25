local M = {}

function M.package()
    return { 'Mofiqul/vscode.nvim' }
end

function M.setup()
    require('vscode').load()
end

return M
