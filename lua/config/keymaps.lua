-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Forbidden keymap
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Map Lazy to <leader>L due to harpoon occupying <leader>l
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<CR>", { desc = "Lazy" })

-- Easier command mode movement
vim.keymap.set("c", "<C-j>", "<C-n>")
vim.keymap.set("c", "<C-k>", "<C-p>")

-- Better redo
vim.keymap.set("n", "U", "<C-r>", { desc = "Redo" })
vim.keymap.set("n", "<C-r>", "U", { desc = "Undo line" })

-- Append semi-colon at end of line in insert and normal mode
vim.keymap.set("i", "<C-f>", "<C-o>mz<C-o>A;<C-o>`z")
vim.keymap.set("n", "<C-f>", "mzA;<Esc>`z", { desc = "Append semi-colon to line" })
-- Also unbind the other leftover scroll keymap
vim.keymap.set("n", "<C-b>", "<nop>")

-- Get left and right git-diff
vim.keymap.set("n", "gmh", "<cmd>diffget //2<CR>", { desc = "Get left git-diff" })
vim.keymap.set("n", "gml", "<cmd>diffget //3<CR>", { desc = "Get right git-diff" })

-- Keymaps from ThePrimeagen
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join line with below" })
-- Misc movements while keeping cursor in center
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev search result" })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste (preserve register)" })

-- next greatest remap ever: asbjornHaland
-- Advanced yanking
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete (preserve register)" })
vim.keymap.set("n", "Q", "<nop>")

-- Replace word under cursor in file
vim.keymap.set(
  "n",
  "<leader>S",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word under cursor in file" }
)
