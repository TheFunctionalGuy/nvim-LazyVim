return {
  "danymat/neogen",
  -- stylua: ignore
  keys = {
    { "<leader>cg", function() require("neogen").generate({}) end, desc = "Generate documentation" },
  },
  opts = {},
}
