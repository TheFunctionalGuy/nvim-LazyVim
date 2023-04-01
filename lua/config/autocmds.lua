-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("m1ll1_" .. name, { clear = true })
end

local function set_file_type_autocmd(filetype_table)
  local group = augroup("set_file_type")

  for filetype, pattern in pairs(filetype_table) do
    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
      group = group,
      pattern = pattern,
      callback = function()
        vim.cmd("set filetype=" .. filetype)
      end,
    })
  end
end

set_file_type_autocmd({
  tablegen = { "*.td" },
})

-- Set settings per filetype
local filetype_settings_group = augroup("filetype_settings")
vim.api.nvim_create_autocmd("FileType", {
  group = filetype_settings_group,
  pattern = { "cpp" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4

    -- Disable autoformat for this buffer
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = filetype_settings_group,
  pattern = { "just" },
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
