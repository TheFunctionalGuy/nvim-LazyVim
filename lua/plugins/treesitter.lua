return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    {
      "IndianBoy42/tree-sitter-just",
      config = true,
    },
    {
      "nvim-treesitter/nvim-treesitter-context",
      config = true,
    },
  },
  -- Extend existing config
  opts = function(_, opts)
    opts.auto_install = true
    opts.ignore_install = { "help" }
    vim.list_extend(opts.ensure_installed, {
      "comment",
      "cpp",
      "diff",
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "jsonc",
      "rust",
    })
  end,
}
