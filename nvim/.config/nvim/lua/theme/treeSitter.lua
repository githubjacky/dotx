require'nvim-treesitter.configs'.setup {
  ensure_installed = {"bash", "c", "cpp", "css", "html", "javascript", "json", "json5", "latex", "lua", "python", "r", "regx", "toml", "yaml"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {"regx"}, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true
  }
}
