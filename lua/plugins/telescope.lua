return {
  "nvim-telescope/telescope.nvim",
  optional = true,
  opts = function(_, opts)
    local actions = require("telescope.actions")

    local stopinsert = function()
      vim.cmd([[stopinsert]])
    end

    opts.defaults.mappings.i = vim.tbl_extend("force", opts.defaults.mappings.i, {
      -- Better movement
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
      -- Better cycling
      ["<C-a-j>"] = actions.cycle_history_next,
      ["<C-a-k>"] = actions.cycle_history_prev,
      -- Better leaving
      ["<Esc>"] = actions.close,
      ["<C-c>"] = stopinsert,
    })
  end,
}
