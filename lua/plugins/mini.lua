return {
  { "echasnovski/mini.align", opts = {} },
  {
    "echasnovski/mini.comment",
    optional = true,
    opts = {
      mappings = {
        comment = "<leader>cc",
        comment_line = "<leader>ccl",
        comment_visual = "<leader>cc",
        textobject = "<leader>cc",
      },
    },
  },
  -- Disable mini.indentscope animation
  {
    "echasnovski/mini.indentscope",
    optional = true,
    opts = function(_, opts)
      local mini_indentscope = require("mini.indentscope")

      return vim.tbl_deep_extend("force", opts or {}, {
        draw = {
          animation = mini_indentscope.gen_animation.none(),
        },
      })
    end,
  },
  {
    "echasnovski/mini.surround",
    optional = true,
    opts = {
      custom_surroundings = {
        ["m"] = {
          input = function()
            local multi_char_surround = MiniSurround.user_input("Mirrored multi-char surround")
            if multi_char_surround == nil then
              return nil
            end
            return {
              ("%s().-()%s"):format(multi_char_surround, string.reverse(multi_char_surround)),
            }
          end,
          output = function()
            local multi_char_surround = MiniSurround.user_input("Mirrored multi-char surround")
            if multi_char_surround == nil then
              return nil
            end
            return {
              left = ("%s"):format(multi_char_surround),
              right = ("%s"):format(string.reverse(multi_char_surround)),
            }
          end,
        },
      },
    },
  },
}
