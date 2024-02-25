local M = {}

function M.package()
    return { "nvim-neo-tree/neo-tree.nvim",
             branch = "v3.x",
             dependencies = { 
                 "nvim-lua/plenary.nvim",
                 "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                 "MunifTanjim/nui.nvim",
                 -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
             }
           }
end

function M.setup()
    vim.keymap.set('n', '<leader>d', '<Cmd>Neotree toggle<CR>')
end

return M
