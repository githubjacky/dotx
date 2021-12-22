require'nvim-lsp-installer'.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)
