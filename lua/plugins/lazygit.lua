return {
    "kdheepak/lazygit.nvim",
    lazy = true,
    event = "VeryLazy" ,
    dependencies =  {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require("telescope").load_extension("lazygit")
        vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>')
    end,
}
