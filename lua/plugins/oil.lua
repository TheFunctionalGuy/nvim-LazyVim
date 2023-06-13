return {
  "stevearc/oil.nvim",
  enabled = false,
  -- stylua: ignore
  keys = {
    { "-", function() require("oil").open() end, desc = "Open parent directory" },
  },
  opts = {
    keymaps = {
      ["<C-h>"] = false,
      ["sj"] = "actions.select_split",
      ["<C-s>"] = false,
      ["sl"] = "actions.select_vsplit",
    },
  },
}
