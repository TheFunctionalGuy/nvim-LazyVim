return {
  { "echasnovski/mini.align", config = true },
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
  {
    "echasnovski/mini.indentscope",
    optional = true,
    opts = {
      draw = {
        animation = require("mini.indentscope").gen_animation.none(),
      },
    },
  },
  {
    "echasnovski/mini.pairs",
    enabled = false,
  },
  {
    "echasnovski/mini.surround",
    optional = true,
    opts = {
      custom_surroundings = {
        -- Latex commands: \command{%s}
        ["C"] = {
          input = { "\\%w+%b{}", "^.-{().*()}$" },
          output = function()
            local fun_name = MiniSurround.user_input("Latex command name")
            if fun_name == nil then
              return nil
            end
            return { left = ("\\%s{"):format(fun_name), right = "}" }
          end,
        },
        -- Latex environment: \begin{environment}\n%s\n\end{environment}
        ["E"] = {
          input = { "\\begin{(%w*)}.-\\end{%1}", "^\\begin{.-}\n().-()\n\\end{.-}$" },
          output = function()
            local fun_name = MiniSurround.user_input("Latex environment name")
            if fun_name == nil then
              return nil
            end
            return { left = ("\\begin{%s}\n"):format(fun_name), right = ("\n\\end{%s}"):format(fun_name) }
          end,
        },
        -- Latex bold text: \textbf{%s}
        ["B"] = {
          input = { "\\textbf{%w*}", "^\\textbf{().-()}$" },
          output = { left = "\\textbf{", right = "}" },
        },
        -- Latex italic text: \textit{%s}
        ["I"] = {
          input = { "\\textit{%w*}", "^\\textit{().-()}$" },
          output = { left = "\\textit{", right = "}" },
        },
      },
    },
  },
}
