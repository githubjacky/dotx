local map = vim.api.nvim_set_keymap
--------------------------------------------------------------------------------------
--                       insert mode
--------------------------------------------------------------------------------------

-- escape
map('i', 'jk', '<esc>', {noremap=true})
map('i', 'kj', '<esc>', {noremap=true})


-- tab completion
function _G.smart_tab()
    return vim.fn.pumvisible() == 1 and [[\<C-n>]] or [[\<Tab>]]
end

map('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})


--------------------------------------------------------------------------------------
--                       normal mode
--------------------------------------------------------------------------------------


-- navigate amoung buffer
map('n', '<tab-tab>', '<cmd>bd<cr>', {noremap=true})


--remap the visual mode
map('n', 'vv', '<s-v>', {noremap=true})

--command
map('n', '<s-w>', '<cmd>w<cr>', {noremap=true})
map('n', '<s-q>', '<cmd>q!<cr>', {noremap=true})
map('n', '<s-e>', ':source %<cr>', {noremap=true})

--remap
map('n', '<s-r>', '<c-r>', {noremap=true})
map('n', '<s-h>', '0', {noremap=true})
map('n', '<s-l>', '$', {noremap=true})

--move(half page up and down)
map('n', '<s-u>', '<c-u>', {noremap=true})
map('n', '<s-d>', '<c-d>', {noremap=true})

--------------------------------------------------------------------------------------
--                       visual mode
--------------------------------------------------------------------------------------

map('v', 'jk', '<esc>', {noremap=true})
map('v', 'kj', '<esc>', {noremap=true})

-- easy tab
map('v', '<s-z>', '<gv', {noremap=true})
map('v', '<s-x>', '>gv', {noremap=true})



--------------------------------------------------------------------------------------
--                       command line mode
--------------------------------------------------------------------------------------
--searching navigation
map('c', '<s-j>', '<c-g>', {noremap=true})
map('c', '<s-k>', '<c-t>', {noremap=true})



--------------------------------------------------------------------------------------
--                       terminal line mode
--------------------------------------------------------------------------------------
map('t', '<leader>t', '<c-\\><c-n>', {noremap = true})
