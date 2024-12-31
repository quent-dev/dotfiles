-- LSP Support
return {
  -- LSP Configuration 

    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
      -- LSP Management
      -- https://github.com/williamboman/mason.nvim
      { 'williamboman/mason.nvim' },
      -- https://github.com/williamboman/mason-lspconfig.nvim
      { 'williamboman/mason-lspconfig.nvim' },

      -- Auto-Install LSPs, linters, formatters, debuggers
      -- https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim
      { 'WhoIsSethDaniel/mason-tool-installer.nvim' },
    },
    config = function ()
      require("mason").setup()
      require("mason-lspconfig").setup ({
        -- Install these LSP automatically
      ensure_installed = {
        'lua_ls',
        'pyright',

      },
    })
      require("mason-tool-installer").setup({
        --Install these linters, formatters, debuggers automatically
        ensure_installed = {
          'black',
          'debugpy',
          'flake8',
          'isort',
          'mypy',
          'pylint',
        },
      })

      local lspconfig = require("lspconfig")
      local lsp_capabilites = require("cmp_nvim_lsp").default_capabilities()
      local lsp_attach = function(client, bufnr)
        -- Create your key bindings here
      end

      --Call setup on each LSP server
      require('mason-lspconfig').setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({
            on_attach = lsp_attach,
            capabilities = lsp_capabilities,
          })
        end
      })

      -- Lua LSP Settings
      lspconfig.lua_ls.setup {
        settings = {
          Lua = {
            diagnostics = {
              -- Get the language server to recognize 'vim' global
              globals = {'vim'},
            },
          },
        }
      }
    end
}
