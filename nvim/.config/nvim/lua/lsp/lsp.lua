local sumneko_root_path = "/home/jacky/.local/share/nvim/lspinstall/lua/sumneko-lua/extension/server"
local sumneko_binary = "/home/jacky/.local/share/nvim/lspinstall/lua/sumneko-lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")



require'lspinstall'.setup() -- important

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{}
  require'lspconfig'.lua.setup{
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = 'LuaJIT',
          -- Setup your lua path
          path = runtime_path,
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = {'vim'},
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = vim.api.nvim_get_runtime_file("", true),
          preloadFilesize = 200,
          maxPreload = 2000,
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
          enable = false,
        },
      }
    }
  }
end



-- r lsp_client configure
require'lspconfig'.r_language_server.setup{
    cmd = { "R", "--slave", "-e", "languageserver::run()" },
    filetypes = { "r", "rmd" },
    log_level = 2,
}


