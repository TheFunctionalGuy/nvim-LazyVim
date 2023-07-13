return {
  {
    "Eandrju/cellular-automaton.nvim",
    keys = {
      { "<leader>FML", "<cmd>CellularAutomaton make_it_rain<CR>", desc = "Make it rain" },
      { "<leader>FMl", "<cmd>CellularAutomaton game_of_life<CR>", desc = "Game of life" },
    },
  },
  {
    "folke/which-key.nvim",
    opts = function(_, _)
      require("which-key").register({
        ["<leader>F"] = { name = "+CellularAutomaton" },
        ["<leader>FM"] = { name = "+CellularAutomaton" },
      })
    end,
  },
}
