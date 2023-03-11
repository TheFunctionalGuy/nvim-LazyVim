-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("m1ll1_" .. name, { clear = true })
end

-- Disable autoformat for cpp files
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = augroup("disable_autoformat"),
  pattern = { "cpp" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- close more filetypes with <q>
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("close_with_q"),
  pattern = {
    "fugitive",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})
