return {
  "neovim/nvim-lspconfig",
  optional = true,
  opts = {
    servers = {
      texlab = {
        settings = {
          texlab = {
            build = {
              auxDirectory = "aux",
              args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "-auxdir=aux", "%f" },
              executable = "latexmk",
              forwardSearchAfter = true,
              onSave = true,
            },
            -- Enable forward-search
            forwardSearch = {
              executable = "zathura",
              args = {
                "--synctex-forward",
                "%l:1:%f",
                "%p",
              },
            },
          },
        },
      },
    },
  },
  -- Ensure TeX formatter is installed
  {
    "williamboman/mason.nvim",
    optional = true,
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "latexindent" })
      end
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        tex = { "latexindent" },
      },
    },
  },
}
