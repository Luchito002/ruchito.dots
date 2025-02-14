return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-lua/popup.nvim" },
    { "kyazdani42/nvim-web-devicons" },
    { "nvim-telescope/telescope-file-browser.nvim" },
    { "nvim-telescope/telescope-ui-select.nvim" },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = 'make'
    },
  },
  event = "VeryLazy",

  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          prompt_position = "top",
        },
      },
      i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
      },
      sorting_strategy = "ascending",
    },

    extensions = {
      fzf = {
        fuzzy = true,                   -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true,    -- override the file sorter
        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
        -- the default case_mode is "smart_case"
      },
    }
  },
  config = function(opts)
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#27a1b9" })
    vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = "#27a1b9" })

    vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = "#B284BE" })
    vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#B284BE" })

    vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = "#5de4c7" })
    vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#5de4c7" })

    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })

    require('telescope').setup(opts)
    require('telescope').load_extension('fzf')
  end,

  keys = {
    { "<leader><leader>", "<cmd>Telescope find_files<cr>",  desc = "Find Files" },
    { "<leader>w",        "<cmd>Telescope live_grep<cr>",   desc = "Find Word" },
    { "<leader>r",        "<cmd>Telescope oldfiles<cr>",    desc = "Recent files" },
    { "<leader>b",        "<cmd>Telescope buffers<cr>",     desc = "Open Buffers" },
    { "<leader>th",       "<cmd>Telescope help_tags<cr>",   desc = "Open Help tags" },
    { "<leader>c",        "<cmd>Telescope colorscheme<cr>", desc = "Select colorscheme" },
    {
      "<leader>e",
      function()
        require('telescope').extensions.file_browser.file_browser({ path = "%:h:p", select_buffer = true })
      end,
      desc = "Open file browser"
    },

    -- git
    { "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Git Branches selector" },
    { "<leader>gc", "<cmd>Telescope git_commits<cr>",  desc = "Git commits" },
    { "<leader>gp", "<cmd>Telescope git_bcommits<cr>", desc = "Git commits buffer" },
    { "<leader>gs", "<cmd>Telescope git_status<cr>",   desc = "Git Status" },
    {
      "<leader>gu",
      function()
        require('telescope.builtin').git_files({ show_untracked = true })
      end,
      desc = "Git Files selector"
    },

    -- etc
    {
      "<leader>te",
      function()
        require('telescope.builtin').find_files({ hidden = true })
      end,
      desc = "Find hidden files"
    },
    {
      "<leader>rp",
      function()
        require("telescope.builtin").find_files({
          prompt_title = "Plugins",
          cwd = "~/.config/nvim/lua/plugins",
          attach_mappings = function(_, map)
            local actions = require("telescope.actions")
            local action_state = require("telescope.actions.state")
            map("i", "<c-y>", function(prompt_bufnr)
              local new_plugin = action_state.get_current_line()
              actions.close(prompt_bufnr)
              vim.cmd(string.format("edit ~/.config/nvim/lua/plugins/%s.lua", new_plugin))
            end)
            return true
          end
        })
      end
    },
  }
}
