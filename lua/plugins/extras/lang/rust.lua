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
    opts = function(_, opts)
      -- Enable clippy if RUSTACEANVIM_ENABLE_CLIPPY is set in env variables or disable it otherwise
      if vim.env.RUSTACEANVIM_ENABLE_CLIPPY then
        return vim.tbl_deep_extend("force", opts or {}, {
          tools = {
            enable_clippy = true,
          },
        })
      else
        return vim.tbl_deep_extend("force", opts or {}, {
          tools = {
            enable_clippy = false,
          },
        })
      end
    end,
  },
}
