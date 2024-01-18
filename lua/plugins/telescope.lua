return {
  "nvim-telescope/telescope.nvim",
  optional = true,
  opts = function(_, opts)
    local actions = require("telescope.actions")

    opts.defaults.mappings.i = vim.tbl_extend("force", opts.defaults.mappings.i, {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
      ["<C-a-j>"] = actions.cycle_history_next,
      ["<C-a-k>"] = actions.cycle_history_prev,
    })
  end,
}
