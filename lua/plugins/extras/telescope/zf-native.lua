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
}
