return {
  "danymat/neogen",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  -- stylua: ignore
  keys = {
    { "<leader>cg", function() require("neogen").generate({}) end, desc = "Generate documentation" },
  },
  config = true,
}
