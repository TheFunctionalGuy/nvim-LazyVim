return {
  {
    "neovim/nvim-lspconfig",
    optional = true,
    opts = {
      servers = {
        taplo = {
          -- Use local install instead of mason
          mason = false,
        },
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    optional = true,
    opts = {
      tools = {
        enable_clippy = false,
      },
    },
  },
}
