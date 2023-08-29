-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local autocmd = vim.api.nvim_create_autocmd
local function augroup(name)
  return vim.api.nvim_create_augroup("m1ll1_" .. name, { clear = true })
end

-- #############################
-- # Set filetypes per pattern #
-- #############################
local function set_file_type_autocmd(filetype_table)
  local group = augroup("set_file_type")

  for filetype, pattern in pairs(filetype_table) do
    autocmd({ "BufRead", "BufNewFile" }, {
      group = group,
      pattern = pattern,
      desc = "Set file type per pattern",
      callback = function()
        vim.cmd("set filetype=" .. filetype)
      end,
    })
  end
end

set_file_type_autocmd({
  tablegen = { "*.td" },
})

-- #############################
-- # Set settings per filetype #
-- #############################
local filetype_settings_group = augroup("filetype_settings")
-- autocmd("WinEnter", {
--   group = filetype_settings_group,
--   pattern = { "lazy" },
--   callback = function()
--     -- Disable better diagnostic annotation for lazy.nvim
--     vim.diagnostic.show(nil, 0, nil, {
--       virtual_text = true,
--       virtual_lines = false,
--     })
--   end,
-- })

-- Tabstop settings
autocmd("FileType", {
  group = filetype_settings_group,
  pattern = { "json", "jsonc", "lua", "haskell" },
  desc = "Set tabstop size = 2 for certain file types",
  callback = function()
    vim.opt_local.tabstop = 2
  end,
})

-- Wrapping
autocmd("FileType", {
  group = filetype_settings_group,
  pattern = { "plaintex", "tex" },
  desc = "Enable wrapping for certain file types",
  callback = function()
    vim.opt_local.wrap = true
  end,
})

-- Close more filetypes with <q>
autocmd("FileType", {
  group = augroup("close_with_q"),
  pattern = {
    "fugitive",
  },
  desc = "Allow certain file types to be closed with <q>",
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})

-- Clear snippet when leaving insert mode
local luasnip = require("luasnip")

autocmd("ModeChanged", {
  group = augroup("unlink_snippet"),
  pattern = { "s:n", "i:*" },
  desc = "Forget the current snippet when leaving the insert mode",
  callback = function(evt)
    -- If there is more than one node then all of them need to get removed
    while true do
      if luasnip.session and luasnip.session.current_nodes[evt.buf] and not luasnip.session.jump_active then
        luasnip.unlink_current()
      else
        break
      end
    end
  end,
})

-- Disable auto comment when pressing o/O
autocmd("Filetype", {
  group = augroup("disable_auto_comment"),
  pattern = { "*" },
  desc = "Don't continue comments with o and O",
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions - "o"
  end,
})

-- Disable indent guide on certain additional file types
autocmd("FileType", {
  group = augroup("disable_mini_indentscope"),
  pattern = {
    "undotree",
  },
  desc = "Disable mini.indentscope for certain file types",
  callback = function()
    vim.b.miniindentscope_disable = true
  end,
})
