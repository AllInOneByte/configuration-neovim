local status, lsp_installer = pcall(require, "nvim-lps-installer")
if (not status) then return end

local enhance_server_opts = {
  ["eslint"] = function(opts)
    opts.settings = {
      format = {
        enable = true,
      },
    }
  end,
}

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
  local opts = {}

  -- (optional) Customize the options passed to the server
  -- if server.name == "tsserver" then
  --     opts.root_dir = function() ... end
  -- end
  if enhance_server_opts[server.name] then
    enhance_server_opts[server.name](opts)
  end

  -- This setup() function will take the provided server configuration and decorate it with the necessary properties
  -- before passing it onwards to lspconfig.
  -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  server:setup(opts)
end)
