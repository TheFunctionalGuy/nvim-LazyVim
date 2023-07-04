return {
  "williamboman/mason.nvim",
  -- Overwrite existing config
  opts = {
    ensure_installed = {
      -- Lua
      "lua-language-server",
      "stylua",
      -- Rust
      "rust-analyzer",
      -- C++
      "clangd",
      "clang-format",
      -- DAP
      "codelldb",
    },
  },
}
