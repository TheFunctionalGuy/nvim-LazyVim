return {
  { "echasnovski/mini.align", config = true },
  {
    "echasnovski/mini.comment",
    opts = {
      mappings = {
        comment = "<leader>cc",
        comment_line = "<leader>ccl",
        textobject = "<leader>cc",
      },
    },
  },
  {
    "echasnovski/mini.indentscope",
    opts = {
      draw = {
        animation = require("mini.indentscope").gen_animation.none(),
      },
    },
  },
  {
    "echasnovski/mini.pairs",
    enabled = false,
  },
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "Ma",
        delete = "Md",
        find = "Mf",
        find_left = "MF",
        highlight = "Mh",
        replace = "Mr",
        update_n_lines = "Mn",
      },
    },
  },
}
