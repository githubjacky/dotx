--
-- (_)_ __ (_) |_  | |_   _  __ _
-- | | '_ \| | __| | | | | |/ _` |
-- | | | | | | |_ _| | |_| | (_| |
-- |_|_| |_|_|\__(_)_|\__,_|\__,_|

-- Map leader to space
vim.g.mapleader=' '

--local fn = vim.fn
--local execute = vim.api.nvim_command


require('setting')
require('mapkey')
require('plugin')
require('theme')
require('tool')
require('lsp')

-- colorscheme
--nightfox
require('nightfox').setup{
    fox = "nordfox",
    --fox = "nightfox",
    transparent = false,
    terminal_colors = true,
    styles = {
    comments = "none", -- change style of comments to be italic
    keywords = "bold", -- change style of keywords to be bold
    functions = "italic,bold" -- styles can be a comma separated list
    }
}

require('nightfox').load()
