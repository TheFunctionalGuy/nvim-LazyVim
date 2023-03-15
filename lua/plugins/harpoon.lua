return {
  "theprimeagen/harpoon",
  -- stylua: ignore
  keys = {
    -- General keymaps
    { "<leader>a", function() require("harpoon.mark").add_file() end, desc = "Mark file", },
    { "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Open harpoon quick menu", },

    -- Keymaps for slots
    { "<leader>h", function() require("harpoon.ui").nav_file(1) end, desc = "Open harpoon file at slot 1", },
    { "<leader>j", function() require("harpoon.ui").nav_file(2) end, desc = "Open harpoon file at slot 2", },
    { "<leader>k", function() require("harpoon.ui").nav_file(3) end, desc = "Open harpoon file at slot 3", },
    { "<leader>l", function() require("harpoon.ui").nav_file(4) end, desc = "Open harpoon file at slot 4", },
  },
}
