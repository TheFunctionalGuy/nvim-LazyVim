return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      -- Lua
      "lua-language-server",
      "stylua",
      -- C++
      "clang-format",
      -- Python
      "black",
      -- Zig,
      "zls",
    })
  end,
}
