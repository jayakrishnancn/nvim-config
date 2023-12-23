
return {
  'akinsho/bufferline.nvim', 
  version = "*", 
  dependencies = 'nvim-tree/nvim-web-devicons',
  event = "VeryLazy",
  config = function()
    vim.opt.termguicolors = true

    require('bufferline').setup {
      options = {
        offsets = {
          {
            filetype = "NvimTree",
            text = "Explorer",
            highlight = "PanelHeading",
            padding = 1,
          },
          {
            filetype = "neo-tree",
            text = "Explorer",
            highlight = "PanelHeading",
            padding = 1,
          },
        },
      },
    }


  end
}

