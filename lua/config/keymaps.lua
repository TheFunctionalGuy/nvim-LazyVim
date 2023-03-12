-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Forbidden keymap
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Map Lazy to <leader>L due to harpoon occupying <leader>l
vim.keymap.set("n", "<leader>L", "<cmd>:Lazy<cr>", { desc = "Lazy" })

-- Easier command mode movement
vim.keymap.set("c", "<C-j>", "<C-n>")
vim.keymap.set("c", "<C-k>", "<C-p>")

-- Better undo
vim.keymap.set("n", "U", "<C-r>")

-- Append semi-colon at end of line in insert mode
vim.keymap.set("i", "<C-l>", "<C-o>mz<C-o>A;<C-o>`z")

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
-- Advanced yanking (currently disabled)
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete (preserve register)" })
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set(
  "n",
  "<leader>S",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word under cursor in file" }
)
