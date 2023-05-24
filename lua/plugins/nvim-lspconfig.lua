return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      keys = {
        {
          "<leader>uD",
          function()
            local Util = require("lazy.core.util")
            local new_value = not vim.diagnostic.config().virtual_lines
            require("lsp_lines").toggle()

            if new_value then
              Util.info("Enabled virtual line diagnostics", { title = "Option" })
            else
              Util.info("Disabled virtual line diagnostics", { title = "Option" })
            end
          end,
          desc = "Toggle virtual line diagnostics",
        },
      },
      config = true,
    },
  },
  -- Extend existing config
  opts = function(_, opts)
    opts.diagnostics.virtual_text = false
  end,
}
