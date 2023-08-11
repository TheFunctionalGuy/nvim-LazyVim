return {
  "epwalsh/obsidian.nvim",
  event = { "BufReadPre " .. vim.fn.expand("~") .. "/Obsidian/vault/**.md" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  cmd = {
    "ObsidianOpen",
    "ObsidianNew",
    "ObsidianQuickSwitch",
    "ObsidianFollowLink",
    "ObsidianBacklinks",
    "ObsidianToday",
    "ObsidianYesterday",
    "ObsidianTemplate",
    "ObsidianSearch",
    "ObsidianLink",
    "ObsidianLinkNew",
  },
  keys = {
    { "<leader>o", "<cmd>ObsidianQuickSwitch<CR>", desc = "Quick Switch (Obsidian)" },
  },
  opts = {
    dir = "~/Obsidian/vault",
    -- TODO: Configure gf passthrough correctly
    mappings = {},
  },
}
