return {
  "neovim/nvim-lspconfig",
  optional = true,
  opts = function(_, opts)
    -- Disable pyright lsp
    opts.servers["pyright"] = nil
    -- Add pylsp
    opts.servers["pylsp"] = {
      settings = {
        pylsp = {
          plugins = {
            pycodestyle = {
              maxLineLength = 100,
            },
          },
        },
      },
    }
  end,
}
