return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim",
  },
  config = function()
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

    local on_attach = function(_, bufnr)
      vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

      local opts = { buffer = bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
      vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
      vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
      vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, opts)
      vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
      vim.keymap.set('n', '<space>f', function()
        vim.lsp.buf.format { async = true }
      end, opts)
    end
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    require("neodev").setup()
    require("lspconfig").lua_ls.setup({
      on_attach = on_attach,
      setting = {
        Lua = {
          telemetry = { enable = false },
          workspace = { chechThirdParty = false }
        }
      }
    })
    require("lspconfig").eslint.setup({
      on_attach = on_attach,
      capabilities = capabilities
    })
    require("lspconfig").ts_ls.setup({
      on_attach = on_attach,
      capabilities = capabilities
    })
    require('lspconfig').custom_elements_ls.setup({
      on_attach = on_attach,
      capabilities = capabilities
    })
    require("lspconfig").tailwindcss.setup({
      on_attach = on_attach,
      capabilities = capabilities
    })


    -- require("lspconfig").biome.setup({
    --   on_attach = on_attach,
    --   capabilities = capabilities
    -- })
    -- require("lspconfig").cssls.setup({
    --   on_attach = on_attach,
    --   capabilities = capabilities
    -- })

    -- require("lspconfig").csharp_ls.setup({
    --   on_attach = on_attach,
    --   capabilities = capabilities
    -- })
    -- -- For python
    -- require("lspconfig").pyright.setup({
    --   on_attach = on_attach,
    --   capabilities = capabilities
    -- })

    -- -- For java
    -- require("lspconfig").jdtls.setup({
    --   on_attach = on_attach,
    --   -- remove annoying messages
    --   handlers = {
    --     ['language/status'] = function(_, result)
    --       vim.print('Loading jdtls...')
    --     end,
    --     ['$/progress'] = function(_, result, ctx)
    --     end,
    --   },
    -- })
  end
}
