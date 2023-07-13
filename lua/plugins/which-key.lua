return {
  "folke/which-key.nvim",
  opts = function(_, _)
    require("which-key").register({
      ["gm"] = { name = "+Git merge" },
    })
  end,
}
