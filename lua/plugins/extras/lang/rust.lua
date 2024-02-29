return {
  "neovim/nvim-lspconfig",
  optional = true,
  opts = {
    servers = {
      rust_analyzer = {
        -- Use local install instead of mason
        mason = false,
      },
    },
  },
}
