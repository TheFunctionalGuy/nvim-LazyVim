return {
  "neovim/nvim-lspconfig",
  optional = true,
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
  -- Custom LSP keymaps
  opts = {
    diagnostics = {
      virtual_text = false,
      virtual_lines = true,
    },
    servers = {
      ["*"] = {
        keys = {
          -- Disable old keymap overlapping with comment
          { "<leader>cc", mode = { "n", "x" }, false },
          { "<leader>cC", mode = { "n" }, false },
          -- Move to <leader>cl instead overwritting LSP info keymap
          { "<leader>cl", vim.lsp.codelens.run, desc = "Run Codelens", mode = { "n", "x" }, has = "codeLens" },
          {
            "<leader>cL",
            vim.lsp.codelens.refresh,
            desc = "Refresh & Display Codelens",
            mode = { "n" },
            has = "codeLens",
          },
        },
      },
    },
  },
}
