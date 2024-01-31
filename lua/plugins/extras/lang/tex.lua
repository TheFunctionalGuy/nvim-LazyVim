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
            diagnostics = {
              ignoredPatterns = {
                "Undefined reference",
              },
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
}
