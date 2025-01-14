return {
  "saghen/blink.cmp",
  optional = true,
  opts = {
    keymap = {
      preset = "default",
      ["<C-j>"] = { "select_next" },
      ["<C-k>"] = { "select_prev" },
      -- TODO: Think about using the default <C-y> instead
      ["<C-m>"] = { "accept" },
    },
  },
}
