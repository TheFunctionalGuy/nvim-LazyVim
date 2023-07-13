return {
  "christoomey/vim-tmux-navigator",
  -- stylue: ignore
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<CR>", desc = "Go to left window" },
    { "<C-j>", "<cmd>TmuxNavigateDown<CR>", desc = "Go to lower window" },
    { "<C-k>", "<cmd>TmuxNavigateUp<CR>", desc = "Go to upper window" },
    { "<C-l>", "<cmd>TmuxNavigateRight<CR>", desc = "Go to right window" },
    { "<C-\\>", "<cmd>TmuxNavigatePrevious<CR>", desc = "Go to previous tmux pane" },
  },
}
