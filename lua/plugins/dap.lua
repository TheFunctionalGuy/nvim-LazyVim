-- local install_root_dir = vim.fn.stdpath("data") .. "/mason"
-- local extension_path = install_root_dir .. "/packages/codelldb/extension/"
-- local codelldb_path = extension_path .. "adapter/codelldb"
--
return {
  {
    "mfussenegger/nvim-dap",
    -- dependencies = {
    --   { "nvim-telescope/telescope-dap.nvim" },
    -- },
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
    -- TODO: Remove old config stuff if everything works
    --   opts = {
    --     setup = {
    --       codelldb = function()
    --         local dap = require("dap")
    --         dap.adapters.codelldb = {
    --           type = "server",
    --           port = "${port}",
    --           executable = {
    --             command = codelldb_path,
    --             args = { "--port", "${port}" },
    --
    --             -- On windows you may have to uncomment this:
    --             -- detached = false,
    --           },
    --         }
    --         -- Use launch.json
    --         require("dap.ext.vscode").load_launchjs(nil, { codelldb = { "c", "cpp", "rust" } })
    --       end,
    --     },
    --   },
    --   config = function(plugin, opts)
    --     require("nvim-dap-virtual-text").setup({
    --       commented = true,
    --     })
    --
    --     local dap, dapui = require("dap"), require("dapui")
    --     dapui.setup({})
    --
    --     dap.listeners.after.event_initialized["dapui_config"] = function()
    --       dapui.open()
    --     end
    --     dap.listeners.before.event_terminated["dapui_config"] = function()
    --       dapui.close()
    --     end
    --     dap.listeners.before.event_exited["dapui_config"] = function()
    --       dapui.close()
    --     end
    --
    --     -- set up debugger
    --     for k, _ in pairs(opts.setup) do
    --       opts.setup[k](plugin, opts)
    --     end
    --
    --     -- Set up icons
    --     -- TODO: Add colors
    --     local icons = {
    --       BreakpointRejected = "", --text=R
    --       BreakpointCondition = "", --text=C
    --       Breakpoint = "", --text=B
    --       LogPoint = "", --text=L
    --     }
    --     for name, icon in pairs(icons) do
    --       name = "Dap" .. name
    --       vim.fn.sign_define(name, { text = icon, texthl = name, numhl = "" })
    --     end
    --   end,
    -- },
  },
}
