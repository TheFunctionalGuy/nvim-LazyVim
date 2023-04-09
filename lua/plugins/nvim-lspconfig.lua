return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      -- stylua: ignore
      keys = {
        { "<leader>uD", function() require("lsp_lines").toggle() end, desc = "Toggle lsp_lines" },
      },
      config = true,
    },
  },
  -- Extend existing config
  opts = function(_, opts)
    opts.diagnostics.virtual_text = false
  end,
}
