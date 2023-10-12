return {
  "folke/which-key.nvim",
  optional = true,
  opts = function(_, _)
    require("which-key").register({
      ["gm"] = { name = "+Git merge" },
    })
  end,
}
