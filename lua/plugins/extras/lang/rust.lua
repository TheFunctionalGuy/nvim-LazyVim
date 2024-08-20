return {
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
}
