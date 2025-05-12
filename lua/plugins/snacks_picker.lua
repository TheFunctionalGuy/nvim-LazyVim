return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = {
        -- TODO: Look for better layout or create own
        preset = "ivy_split",
      },
      win = {
        input = {
          keys = {
            -- History
            ["<C-a-j>"] = { "history_forward", mode = { "i", "n" } },
            ["<C-a-k>"] = { "history_back", mode = { "i", "n" } },
            -- Insert mode
            ["<C-c>"] = "cancel",
            ["<Esc>"] = { "close", mode = { "i", "n" } },
          },
        },
      },
    },
  },
}
