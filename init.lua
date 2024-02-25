require('basic')

local coc = require('coc')
local masonPackages = require('masonPackages')
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
    coc.package(),
    masonPackages.package(),
    whichKey.package(),
    vscodeTheme.package(),
    neotree.package(),
    telescope.package(),
    formatCode.package(),
    treesitter.package(),
})

coc.setup()
masonPackages.setup()
whichKey.setup()
vscodeTheme.setup()
neotree.setup()
telescope.setup()
formatCode.setup()
treesitter.setup()


--[[
local coc = require('coc')
local masonPackages = require('masonPackages')
local whichKey = require('whichKey')
local vscodeTheme = require('vscodeTheme')
local nerdtree = require('nerdtree')
local telescope = require('telescope')
local formatCode = require('formatCode')
local treesitter = require('treesitter')
local nvimCMP = require('nvimCMP')


local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

--Plug(coc.package())
Plug(masonPackages.package())
Plug(whichKey.package())
Plug(vscodeTheme.package())
Plug(nerdtree.package())
--Plug(telescope.package())

vim.call('plug#end')





coc.setup()
masonPackages.setup()
whichKey.setup()
vscodeTheme.setup()
nerdtree.setup()
--telescope.setup()
]]--
--require('packer').startup(function(use)
   -- use { masonPackages.package() }
--end)


--require('lazy').setup({
--    masonPackages.package(),
--    whichKey.package(),
--    vscodeTheme.package(),
--    neotree.package(),
--    telescope.package(),
--    formatCode.package(),
--    treesitter.package(),
--    nvimCMP.package(),
--})

--masonPackages.setup()
--whichKey.setup()
--vscodeTheme.setup()
--neotree.setup()
--telescope.setup()
--formatCode.setup()
--treesitter.setup()
--nvimCMP.setup() ]]--
