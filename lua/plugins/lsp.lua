return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim"
    },
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "rust_analyzer", "tsserver", "html", "cssls", "emmet_ls", "pyright" },
        automatic_installation = true
      })

      require('mason-tool-installer').setup({
        ensure_installed = {
          "prettier",
          "pylint",
          "eslint_d"
        },
        auto_update = false,
        run_on_start = false
      })
    end
  },
  --[[ {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      { "antosha417/nvim-lsp-file-operations", config = true },

    },
    config = function()
      local lspconfig = require("lspconfig")
      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      local capabilities = cmp_nvim_lsp.default_capabilities()
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          -- Enable completion triggered by <c-x><c-o>
          vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

          -- Buffer local mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions

          local function map(mode, lhs, rhs, desc, opts)
            local options = { noremap = true, silent = true, desc = desc, buffer = ev.buf }
            if opts then
              if opts.desc then
                opts.desc = "keymaps.lua: " .. opts.desc
              end
              options = vim.tbl_extend('force', options, opts)
            end
            vim.keymap.set(mode, lhs, rhs, options)
          end

          map('n', ']d', vim.diagnostic.goto_next, 'Next diagnostic')
          map('n', '[d', vim.diagnostic.goto_prev, 'Previous diagnostic')
          map('n', 'gr', vim.lsp.buf.references, "Show LSP references")
          map('n', 'gD', vim.lsp.buf.declaration, 'Go to Declaration')
          map('n', 'gd', vim.lsp.buf.definition, "Definitions")
          map('n', 'K', vim.lsp.buf.hover, "View Documentation")
          map('n', 'gi', vim.lsp.buf.implementation, "Implementations")
          -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
          --[[ vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, )
          vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
          vim.keymap.set('n', '<leader>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          end, opts) \]\]
          map('n', '<leader>D', vim.lsp.buf.type_definition, "Type definitions")
          map('n', '<leader>cr', vim.lsp.buf.rename, "Code Smart rename")
          map({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, "Code actions")
          map('n', '<leader>cf', function()
            vim.lsp.buf.format { async = true }
          end, "Code Format")
        end,


      })
    end

  } ]]
}
