return {
  "tpope/vim-fugitive",
  cmd = "Git",
  keys = {
    { "<leader>gj", "<cmd>Git<CR>", desc = "Open Fugitive" },
    { "<leader>gp", "<cmd>Git pull<CR>", desc = "Git pull" },
    { "<leader>gP", "<cmd>Git push<CR>", desc = "Git push" },
    { "<leader>gf", "<cmd>Git fetch<CR>", desc = "Git fetch" },
  },
}
