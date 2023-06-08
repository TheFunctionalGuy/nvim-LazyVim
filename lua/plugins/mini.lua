return {
  {
    "echasnovski/mini.comment",
    -- Overwrite existing config
    opts = {
      mappings = {
        comment = "<leader>cc",
        comment_line = "<leader>ccl",
        textobject = "<leader>cc",
      },
    },
  },
  { "echasnovski/mini.align", config = true },
  {
    "echasnovski/mini.pairs",
    enabled = false,
  },
}
