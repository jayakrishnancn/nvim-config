
return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.5',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    {   "nvim-telescope/telescope-fzf-native.nvim", build = "make"},
    "nvim-tree/nvim-web-devicons"
  },
  -- lazy = true,
  config = function()

    local builtin = require('telescope.builtin')
    -- vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "File"})
    -- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Grep file" })
    -- vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = "String (Grep current word under cursor)"})
    -- vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {desc = "recent"})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Buffer"})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Help tags"})

    -- local actions = require("telescope.actions")
--[[
    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    }) ]]

    local telescope = require("telescope")
    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

  end
}
