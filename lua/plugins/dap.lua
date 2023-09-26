return {
  "mfussenegger/nvim-dap",
  -- stylua: ignore
  keys = {
    -- F-keymaps
    { "<F2>",  function() require("dap").continue() end, desc = "Continue" },
    { "<F3>",  function() require("dap").step_into() end, desc = "Step Into", },
    { "<F4>",  function() require("dap").step_over() end, desc = "Step Over", },
    { "<F5>",  function() require("dap").step_out() end, desc = "Step Out", },
    { "<F6>",  function() require("dap").step_back() end, desc = "Step Back", },
    { "<F7>",  function() require("dap").run_last() end, desc = "Restart", },
    { "<F8>",  function() require("dap").terminate() end, desc = "Terminate", },
    { "<F9>",  function() require("dap").disconnect() end, desc = "Disconnect", },
    -- Additional F-keymaps
    { "<F10>", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint", },
    { "<F11>", function() require("dap").set_breakpoint(vim.fn.input "[Condition] > ") end, desc = "Conditional Breakpoint", },
    { "<F12>", function() require("dapui").toggle() end, desc = "Toggle UI", },
  },
}
