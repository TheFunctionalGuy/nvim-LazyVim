return {
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = function(_, opts)
      opts.auto_install = true

      vim.list_extend(opts.ensure_installed, {
        "comment",
        "diff",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "jsonc",
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    optional = true,
      -- stylua: ignore
      keys = {
        { "[x", function() require("treesitter-context").go_to_context() end, desc = "Go to context" },
      },
    opts = {},
  },
}
