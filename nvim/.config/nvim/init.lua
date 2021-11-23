--
-- (_)_ __ (_) |_  | |_   _  __ _
-- | | '_ \| | __| | | | | |/ _` |
-- | | | | | | |_ _| | |_| | (_| |
-- |_|_| |_|_|\__(_)_|\__,_|\__,_|

-- Map leader to space
vim.g.mapleader=' '

local fn = vim.fn
local execute = vim.api.nvim_command


-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua



require('setting')
require('mapkey')
require('plugin')
require('theme')
require('tool')
require('lsp')

-- colorscheme

local nightfox = require('nightfox')
nightfox.setup{
    fox = "nordfox",
    --fox = "nightfox",
    transparent = true,
    terminal_colors = true,
    styles = {
        comments = "none", -- change style of comments to be italic
        keywords = "bold", -- change style of keywords to be bold
        functions = "italic,bold" -- styles can be a comma separated list
    }
}
nightfox.load()
--vim.cmd('colorscheme')
