return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", },

  opts = {
    options = {
      icons_enabled = true,
      theme = 'nightfox',
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = true,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = { { "mode", upper = true } },
      lualine_b = { { "branch", icon = "" }, "db_ui#statusline" },
      lualine_c = { { "filename", file_status = true, path = 1, } },
      lualine_x = {
        "diagnostics",
        "diff",
        "filetype",
        {
          require("lazy.status").updates(),
          cond = require("lazy.status").has_updates(),
          color = { fg = "#ff9e64" }
        } },
    },

    inactive_winbar = {
      lualine_c = { "filename" },
    }
  },
}
