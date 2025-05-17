return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = {
        preset = "better_vertical",
      },
      layouts = {
        ["better_vertical"] = {
          layout = {
            backdrop = true,
            width = 0.8,
            min_width = 80,
            height = 0.85,
            min_height = 30,
            box = "vertical",
            border = "single",
            title = "{title} {live} {flags}",
            title_pos = "center",
            { win = "input", height = 1, border = "bottom" },
            { win = "list", border = "none" },
            { win = "preview", title = "{preview}", height = 0.6, border = "top" },
          },
        },
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
