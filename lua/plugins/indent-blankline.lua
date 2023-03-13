return {
  "lukas-reineke/indent-blankline.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.filetype_exclude, { "undotree" })
  end,
}
