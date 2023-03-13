return {
  "hrsh7th/nvim-cmp",
  dependencies = { "onsails/lspkind.nvim" },
  -- Extend existing config
  opts = function(_, opts)
    local cmp = require("cmp")
    local lspkind = require("lspkind")

    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    })
    opts.formatting = {
      format = lspkind.cmp_format({
        mode = "symbol_text",
        maxwidth = 60,
        ellipsis_char = "...",

        symbol_map = require("lazyvim.config").icons.kinds,
        before = function(_, vim_item)
          return vim_item
        end,
      }),
    }
  end,
}
