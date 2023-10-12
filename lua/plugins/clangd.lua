return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        clangd = function(_, opts_clangd)
          for i, entry in ipairs(opts_clangd.cmd) do
            -- Don't automatically insert headers
            if entry:match("^%-%-header%-insertion=.+") then
              opts_clangd.cmd[i] = "--header-insertion=never"
            end
          end
        end,
      },
    },
  },
  -- Ensure C/C++ formatter is installed
  {
    "williamboman/mason.nvim",
    optional = true,
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "clang-format" })
      end
    end,
  },
}
