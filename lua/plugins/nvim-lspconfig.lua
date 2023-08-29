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
            local new_virtual_lines_value = not vim.diagnostic.config().virtual_lines
            local new_virtual_text_value = not vim.diagnostic.config().virtual_text

            -- Toggle virtual text and lines
            vim.diagnostic.config({
              virtual_lines = new_virtual_lines_value,
              virtual_text = new_virtual_text_value,
            })

            if new_virtual_lines_value then
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
  opts = {
    diagnostics = {
      virtual_text = false,
      virtual_lines = true,
    },
  },
}
