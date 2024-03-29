require('basic')

local lspClangd = require('lspClangd')
local whichKey = require('whichKey')
local vscodeTheme = require('vscodeTheme')
local neotree = require('neotree')
local telescope = require('telescope')
local formatCode = require('formatCode')
local treesitter = require('treesitter')

-- lazy plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    lspClangd.package(),
    whichKey.package(),
    vscodeTheme.package(),
    neotree.package(),
    telescope.package(),
    formatCode.package(),
    treesitter.package(),
})

lspClangd.setup()
whichKey.setup()
vscodeTheme.setup()
neotree.setup()
telescope.setup()
formatCode.setup()
treesitter.setup()

