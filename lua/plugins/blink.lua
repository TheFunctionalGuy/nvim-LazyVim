return {
  "saghen/blink.cmp",
  optional = true,
  opts = {
    keymap = {
      preset = "default",
      ["<C-j>"] = { "select_next" },
      ["<C-k>"] = { "select_prev" },
    },
  },
}
