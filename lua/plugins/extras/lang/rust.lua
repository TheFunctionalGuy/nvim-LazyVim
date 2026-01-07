return {
  { import = "lazyvim.plugins.extras.lang.rust" },
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
      local updated_opts = opts or {}

      updated_opts = vim.tbl_deep_extend("force", updated_opts, {
        server = {
          default_settings = {
            ["rust-analyzer"] = {
              cargo = {
                -- Give rust-analyzer own sub-directory in `target`
                -- This enables running `cargo *` and using the LSP in parallel
                targetDir = true,
              },
              references = {
                -- Ignore imports when using something like goto references
                excludeImports = true,
              },
            },
          },
        },
      })

      -- Enable clippy if RUSTACEANVIM_ENABLE_CLIPPY is set in env variables or disable it otherwise
      if vim.env.RUSTACEANVIM_ENABLE_CLIPPY then
        updated_opts = vim.tbl_deep_extend("force", updated_opts, {
          tools = {
            enable_clippy = true,
          },
        })
      else
        updated_opts = vim.tbl_deep_extend("force", updated_opts, {
          tools = {
            enable_clippy = false,
          },
        })
      end

      return updated_opts
    end,
  },
}
