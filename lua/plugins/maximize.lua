return {
  "declancm/maximize.nvim",
  dependencies = {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local function maximize_status()
        return vim.t.maximized and "   " or ""
      end
      table.insert(opts.sections.lualine_c, 1, maximize_status)
    end,
  },
  -- stylua: ignore
  keys = {
    { "<leader>z", function() require("maximize").toggle() end, desc = "Toggle window maximizing" },
  },
  config = true,
}
