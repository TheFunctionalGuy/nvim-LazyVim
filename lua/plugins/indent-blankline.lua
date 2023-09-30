return {
  "lukas-reineke/indent-blankline.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.exclude.filetypes, { "undotree" })
  end,
}
