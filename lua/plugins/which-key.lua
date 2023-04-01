return {
  "folke/which-key.nvim",
  opts = function()
    require("which-key").register({
      ["gm"] = { name = "+Git merge" },
    })
  end,
}
