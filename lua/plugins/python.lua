return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    -- Disable pyright lsp
    opts.servers["pyright"] = nil
    -- Add pylsp
    opts.servers["pylsp"] = {}
  end,
}
