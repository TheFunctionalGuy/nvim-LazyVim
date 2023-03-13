return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- Lua
      "lua-language-server",
      "stylua",
      -- Rust
      "rust-analyzer",
      "rustfmt",
      -- C++
      "clangd",
      "clang-format",
      -- DAP
      "codelldb",
    },
  },
}