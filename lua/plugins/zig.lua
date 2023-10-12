return {
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
}
