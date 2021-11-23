vim.o.encoding="utf-8"
vim.o.splitbelow=true
vim.o.splitright=true
vim.o.showmode=false
vim.o.background="dark"
vim.o.backup=false
vim.o.clipboard="unnamedplus"
vim.o.termguicolors=true

vim.wo.wrap=false
vim.wo.relativenumber=true
vim.wo.number=true
vim.wo.cursorline=true

vim.bo.smartindent=true
vim.bo.autoindent=true
vim.bo.fileencoding="utf-8"
vim.bo.t_Co="256"
vim.bo.tabstop=4
vim.bo.fileencoding="utf-8"
vim.bo.swapfile=false
vim.bo.spelllang="en,cjk"



-- hide unsaved file when closing the buffer
-- usually vim doesn't allow closing unsaved buffer unless you force it
-- but with hidden option, buffer will be hidden when you close it
-- vim will prompt you to save when closing vim editor
vim.o.hidden=true

-- revome highlighting after search is done
vim.o.hlsearch=false

-- maximum number of item to show in pop up menu
vim.o.pumheight=10

--show the current line and cursor position
vim.o.ruler=true

-- number of screen line for the command line
vim.o.cmdheight=1

-- enable mouth, a stand for all mode
vim.o.mouse="a"

-- number of space to use for indentation
vim.o.shiftwidth=4

--When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.
-- 'tabstop' or 'softtabstop' is used in other places.  A <BS> will delete a
-- 'shiftwidth' worth of space at the start of the line.
vim.o.smarttab=true

-- stop showing the status in status bar
vim.o.laststatus=2

-- The value of this option specifies when the line with tab page labels
-- will be displayed: 0: never 1: only when there are at least two tab 2:always
vim.o.showtabline=2

-- Override the 'ignorecase' option if the search pattern contains upper
-- case characters.  Only used when the search pattern is typed and
-- 'ignorecase' option is on.
vim.o.smartcase=true
vim.o.ignorecase=true

-- back up current file delete afterwards (default)
vim.o.writebackup=true

-- write changes to swap file after "n" ms
vim.o.updatetime=300


-- Time in milliseconds to wait for a mapped sequence to complete.
vim.o.timeoutlen=1000

-- a comma separated list of options for Insert mode completion
vim.o.completeopt='menuone,noinsert,noselect'



-- error signs and warings will be displayed in the number line
-- yes: always
vim.wo.signcolumn='yes'



-- acts editing spaces like tabs
vim.bo.softtabstop=4

-- replace tab with space
vim.bo.expandtab=true

