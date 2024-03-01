-- return {
--   -- add gruvbox
--   { "ellisonleao/gruvbox.nvim" },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox",
--     },
--   },
-- }
-- return {
--   "tiagovla/tokyodark.nvim",
--   opts = {
--     -- custom options here
--   },
--   config = function(_, opts)
--     require("tokyodark").setup(opts) -- calling setup is optional
--     vim.cmd([[colorscheme tokyodark]])
--   end,
-- }
-- return {
--   -- add dracula
--   { "Mofiqul/dracula.nvim" },
--
--   -- Configure LazyVim to load dracula
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "dracula",
--     },
--   },
-- }
-- return {
--   { "sainnhe/everforest" },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "everforest",
--     },
--   },
-- }
-- return {
--   { "sainnhe/sonokai" },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "sonokai",
--     },
--   },
-- }
--
return {
  { "loctvl842/monokai-pro.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
    },
  },
}
