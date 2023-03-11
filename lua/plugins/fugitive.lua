return {
  "tpope/vim-fugitive",
  cmd = "Git",
  keys = {
    { "<leader>gj", "<cmd>Git<CR>", desc = "Open Fugitive" },
    { "<leader>gP", "<cmd>Git pull<CR>", desc = "Git pull" },
    { "<leader>gp", "<cmd>Git push<CR>", desc = "Git push" },
    { "<leader>gf", "<cmd>Git fetch<CR>", desc = "Git fetch" },
  },
}
