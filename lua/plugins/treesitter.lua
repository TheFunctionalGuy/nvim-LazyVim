return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    {
      "IndianBoy42/tree-sitter-just",
      config = true,
    },
    {
      "nvim-treesitter/nvim-treesitter-context",
      -- stylua: ignore
      keys = {
        { "[x", function() require("treesitter-context").go_to_context() end, desc = "Go to context" },
      },
      config = true,
    },
  },
  opts = function(_, opts)
    opts.auto_install = true
    opts.ignore_install = { "help" }

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
}
