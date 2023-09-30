return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Disable pyright lsp
      opts.servers["pyright"] = nil
      -- Add pylsp
      opts.servers["pylsp"] = {}
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")

      -- Add black
      opts.sources = vim.list_extend(opts.sources, { null_ls.builtins.formatting.black })
    end,
  },
}
