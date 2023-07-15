return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Neorg",
  ft = "norg",
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              seceng = "~/neorg/SecEng",
              thesis = "~/neorg/thesis",
              private = "~/neorg/private",
            },
          },
        },
      },
    })
  end,
}
