-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("m1ll1_" .. name, { clear = true })
end

-- Disable autoformat for cpp files
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("disable_autoformat"),
  pattern = { "cpp" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Set shiftwidth per filetype
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("filetype_settings"),
  pattern = { "cpp" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
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

-- Set CWD if first parameter is directory
vim.api.nvim_create_autocmd("VimEnter", {
  group = augroup("change_cwd"),
  callback = function()
    if vim.fn.argc() == 1 then
      local stat = vim.loop.fs_stat(vim.fn.argv(0))
      if stat and stat.type == "directory" then
        vim.cmd({
          cmd = "cd",
          args = { vim.fn.argv(0) },
        })
      end
    end
  end,
})
