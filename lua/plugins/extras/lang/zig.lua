return {
  {
    "neovim/nvim-lspconfig",
    optional = true,
    opts = {
      servers = {
        zls = {
          -- Use local install instead of mason
          mason = false,
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        zig = { "zigfmt" },
      },
    },
  },
}
