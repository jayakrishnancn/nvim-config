-- return {
 -- "nvim-tree/nvim-tree.lua",
 -- version = "*",
 -- lazy = false,
-- dependencies = {
   -- "nvim-tree/nvim-web-devicons",
 -- },
 -- config = function()
   -- require("nvim-tree").setup {}
   -- vim.keymap.set('n','<leader>e' , ':NvimTreeToggle<CR>')
 -- end,
-- }


return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", 
    "MunifTanjim/nui.nvim",
  },
  config = function() 
    require("neo-tree").setup({
      -- close_if_last_window = true,
      window = { 
        width = 25
      }

    })
    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>')
  end
}
