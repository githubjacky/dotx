local tree_cb = require'nvim-tree.config'.nvim_tree_callback
-- default mappings
local list = {
  { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
  { key = "<C-v>",                        cb = tree_cb("vsplit") },
  { key = "<C-s>",                        cb = tree_cb("split") },
  { key = "<C-t>",                        cb = tree_cb("tabnew") },
  { key = "<",                            cb = tree_cb("prev_sibling") },
  { key = ">",                            cb = tree_cb("next_sibling") },
  { key = "P",                            cb = tree_cb("parent_node") },
  { key = "<BS>",                         cb = tree_cb("close_node") },
  { key = "<S-CR>",                       cb = tree_cb("close_node") },
  { key = "<Tab>",                        cb = tree_cb("preview") },
  { key = "K",                            cb = tree_cb("first_sibling") },
  { key = "J",                            cb = tree_cb("last_sibling") },
  { key = "I",                            cb = tree_cb("toggle_ignored") },
  { key = "H",                            cb = tree_cb("toggle_dotfiles") },
  { key = "R",                            cb = tree_cb("refresh") },
  { key = "a",                            cb = tree_cb("create") },
  { key = "d",                            cb = tree_cb("remove") },
  { key = "r",                            cb = tree_cb("rename") },
  { key = "<C-r>",                        cb = tree_cb("full_rename") },
  { key = "x",                            cb = tree_cb("cut") },
  { key = "c",                            cb = tree_cb("copy") },
  { key = "p",                            cb = tree_cb("paste") },
  { key = "y",                            cb = tree_cb("copy_name") },
  { key = "Y",                            cb = tree_cb("copy_path") },
  { key = "gy",                           cb = tree_cb("copy_absolute_path") },
  { key = "[c",                           cb = tree_cb("prev_git_item") },
  { key = "]c",                           cb = tree_cb("next_git_item") },
  { key = "-",                            cb = tree_cb("dir_up") },
  { key = "s",                            cb = tree_cb("system_open") },
  { key = "q",                            cb = tree_cb("close") },
  { key = "g?",                           cb = tree_cb("toggle_help") },
}

require'nvim-tree'.setup {
  -- will not open on setup if the filetype is in this list
  ignore_ft_on_setup  = {},

  -- closes neovim automatically when the tree is the last **WINDOW** in the view
  auto_close          = true,

  -- hijacks new directory buffers when they are opened.
  update_to_buf_dir   = {
    enable = true,
    -- allow to open the tree if it was previously closed
    auto_open = true,
  },

  -- hijack the cursor in the tree to put it at the start of the filename
  hijack_cursor       = false,

  -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
  update_cwd          = true,

  view = {
    -- width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
    width = 22,
    -- height of the window, can be either a number (columns) or a string in `%`, for top or bottom side placement
    height = 20,
    -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
    side = 'left',
    -- if true the tree will resize itself after opening a file
    auto_resize = true,
  },
  mappings = {
      -- custom only false will merge the list with the default mappings
      -- if true, it will only use your list to set the mappings
      custom_only = false,
      -- list of mappings to set on the tree manually
      list = list
  }
}

vim.cmd("autocmd Colorscheme * highlight NvimTreeNormal guibg=#2e3440 guifg=#3c4252")
