return {
  "hrsh7th/nvim-cmp",           -- Completion
  dependencies = {
    { "onsails/lspkind-nvim" }, -- VSCode like pictograms
    { "hrsh7th/cmp-buffer" },   -- nvim-cmp source for buffer words
    { "hrsh7th/cmp-nvim-lsp" }, -- nvim-cmp sourcce for neovim's built-in LSP
    { "L3MON4D3/LuaSnip" },     -- Snippet like VS
    { "saadparwaiz1/cmp_luasnip" },
    { "rafamadriz/friendly-snippets" }
  },

  config = function()
    local cmp = require('cmp')

    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-o>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = "luasnip" }
      }, {
        { name = "buffer" }
      }),
      formatting = {
        format = require('lspkind').cmp_format({ wirth_text = false, maxwidth = 50 })
      }
    })

    require('lspkind').init({
      -- DEPRECATED (use mode instead): enables text annotations
      --
      -- default: true
      -- with_text = true,

      -- defines how annotations are shown
      -- default: symbol
      -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
      mode = 'symbol_text',

      -- default symbol map
      -- can be either 'default' (requires nerd-fonts font) or
      -- 'codicons' for codicon preset (requires vscode-codicons font)
      --
      -- default: 'default'
      preset = 'codicons',

      -- override preset symbols
      --
      -- default: {}
      symbol_map = {
        Text = "󰉿",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "",
        Field = "󰜢",
        Variable = "󰀫",
        Class = "󰠱",
        Interface = "",
        Module = "",
        Property = "󰜢",
        Unit = "󰑭",
        Value = "󰎠",
        Enum = "",
        Keyword = "󰌋",
        Snippet = "",
        Color = "󰏘",
        File = "󰈙",
        Reference = "󰈇",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰏿",
        Struct = "󰙅",
        Event = "",
        Operator = "󰆕",
        TypeParameter = "",
      },
    })
  end
}
