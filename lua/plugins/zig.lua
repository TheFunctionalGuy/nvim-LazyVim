return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        zls = {
          -- Use local install instead of mason
          mason = false,
        },
      },
    },
  },
}
