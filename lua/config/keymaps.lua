-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Forbidden keymap
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>L", "<cmd>:Lazy<cr>", { desc = "Lazy" })

vim.keymap.set("c", "<C-j>", "<C-n>")
vim.keymap.set("c", "<C-k>", "<C-p>")
