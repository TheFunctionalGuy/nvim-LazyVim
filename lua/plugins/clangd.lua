return {
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
}
