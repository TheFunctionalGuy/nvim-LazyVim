return {
  "nvim-neo-tree/neo-tree.nvim",
  optional = true,
  keys = {
    { "<leader>e", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
    { "<leader>E", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
  },
  opts = {
    filesystem = {
      window = {
        fuzzy_finder_mappings = {
          ["<C-j>"] = "move_cursor_down",
          ["<C-k>"] = "move_cursor_up",
        },
      },
    },
  },
}
