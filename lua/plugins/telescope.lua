return {
  "nvim-telescope/telescope.nvim",
  optional = true,
  dependencies = {
    -- Use zf as default fuzzy finder here
    {
      "natecraddock/telescope-zf-native.nvim",
      config = function()
        require("telescope").load_extension("zf-native")
      end,
    },
    -- Disable fzf-native for now
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      enabled = false,
    },
  },
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
