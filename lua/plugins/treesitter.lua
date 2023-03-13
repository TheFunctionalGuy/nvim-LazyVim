return {
  "nvim-treesitter/nvim-treesitter",
  -- Extend existing config
  opts = function(_, opts)
    opts.auto_install = true
    vim.list_extend(opts.ensure_installed, {
      "comment",
      "cpp",
      "diff",
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "rust",
    })
  end,
}
