
return {
  -- -- With lazy the plugin will be automatically loaded when it is required somewhere
  --improve ui
  { 
    "stevearc/dressing.nvim",
    event = "VeryLazy" 
  },
  {
    "pmizio/typescript-tools.nvim",
    --[[ lazy = true,
    event = "VeryLazy", ]]
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },

  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "S", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "s", ":HopWord<cr>", { silent = true })
    end,
  },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup();
      vim.keymap.set('n', '<leader>FF', '<cmd>lua require("spectre").toggle()<CR>', { desc = "Find File in project"} );
      vim.keymap.set('n', '<leader>Ff', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>');
      vim.keymap.set('n', '<leader>F.', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>');

    end,
  },
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      -- vim.cmd "highlight default link gitblame SpecialComment"
      -- vim.g.gitblame_enabled = true
      vim.g.gitblame_delay = 2000
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },

}
