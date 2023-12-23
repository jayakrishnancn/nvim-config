return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local which_key = require("which-key")

    local opts = {
      mode = "n",     -- NORMAL mode
      prefix = "<leader>",
      buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
      silent = true,  -- use `silent` when creating keymaps
      noremap = true, -- use `noremap` when creating keymaps
      nowait = true,  -- use `nowait` when creating keymaps
    }

    local mappings = {
      p = {
        name = "Plugin Manager",
        p = "Lazy",
        m = "Manson",
        M = "Manson Tools",
      },
      f = {
        name = "Find",

      },
      F = {
        name = "Find and replace",
        ["."] = "Current Word From Root",
        f = "Current Word, In Current File",
        F = "From Root"
      },
      [";"] = {
        name = "Dashboard",
        q =  "Quit",
        c = { ":cd ~/.config/nvim<CR>", "Configurations" },
        f = { ":Telescope find_files<CR>", "Find File" },
        n = { ":ene!<CR>", "New File", },
        p = { ":Telescope projects<CR>", "Projects" },
        r = { ":Telescope oldfiles <CR>", "Recent Files" },
      },
      b = {
        name = "Buffer",
      },
      c = {
        name = "Code",
      },
      s = {
        name = "Swap",
        n    = {
          name = "Next",
          a = "Arguments/Parameters",
          m = "Method/Function",
          p = "Properties"
        },
        p    = {
          name = "Next",
          a = "Arguments/Parameters",
          m = "Method/Function",
          p = "Properties"
        }
      },
      g = "Git"
    }

    which_key.register(mappings, opts)
  end,
  opts = {}
}
