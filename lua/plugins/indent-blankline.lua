return {
  "lukas-reineke/indent-blankline.nvim",
  optional = true,
  opts = function(_, opts)
    vim.list_extend(opts.exclude.filetypes, { "undotree" })
  end,
}
