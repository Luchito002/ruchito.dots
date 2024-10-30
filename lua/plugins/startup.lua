return {
  "startup-nvim/startup.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim"
  },
  config = function()
    require('startup').setup({
      -- header = {
      --   type = "text",
      --   align = "center",
      --   fold_section = false,
      --   title = "Header",
      --   margin = 2,
      --   content = {
      --     "    ⢸⡇        ⠈⠙⠻⣶       ⣀⣀⣀⣀⣠⡀    ⢰⣶⠶⠶⣾⠗        ⣿",
      --     "    ⠘⣷⡶⠶     ⢀⣠⣤⠶⢶⣄       ⢀⡶⠋        ⣀⡾⠁         ⣿",
      --     "     ⡇       ⠋    ⣿               ⣤⡶⠾⠟⣻⠟⠛⠉⠁      ⣿",
      --     "  ⣀⣤⣤⣧⣀⡀          ⣿     ⣿            ⣾           ⣿",
      --     " ⢸⣅⡀⢀⡟⠉⠻⡶      ⢀⣤⡿      ⠻⣤⣀⣀⣀⣠⣤      ⠻⣤⣀⡀        ⣤",
      --     "  ⠈⠉⠉          ⠉                       ⠉⠉        ⠉",
      --   },
      --   highlight = "String",
      --   default_color = "#FFFFFF",
      --   oldfiles_amount = 0,
      -- },

      header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header_2",
        margin = 1,
        content = {
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠠⠀⠠⠀⠄⠠⠠⠀⠤⠀⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠐⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠀⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⢀⠔⠁⠀⠀⠀⢀⠤⠀⠀⠀⠀⠀⠀⠠⢀⠀⠀⠀⠀⡈⠢⡀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⢀⠔⠁⠤⠑⡖⠁⠀⠀⠀⠀⠔⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠑⢄⠀⠀⠈⠠⡘⢖⠁⠈⠐⡄⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⢠⠂⡐⠀⠀⡊⠀⠀⠀⠀⠀⡡⠒⠀⠀⠀⢀⠆⢣⠀⠀⠀⠀⠀⢄⠡⡀⠀⠀⠈⢌⢆⠂⠄⠈⢢⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠆⠐⠀⠀⡜⢀⠀⠀⠀⠀⡔⠀⠀⠀⠀⡠⠃⠀⠀⠣⡀⠀⠀⠀⠀⠐⢵⡀⠀⠀⠈⡌⡂⠈⠆⠀⢢⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⡘⠀⠉⠀⢀⡇⠌⠀⠀⠀⡔⠀⠀⠀⣀⠖⠀⠀⠀⠀⠀⠈⠦⣀⠀⠀⠀⠀⠇⠀⠀⠀⠘⢧⠀⠸⠀⠀⢇⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⡁⠀⠀⠀⢸⢢⠁⠀⠀⠐⠀⠀⡠⠚⠀⠉⠂⠀⠀⠀⠀⠀⠘⠀⠸⢅⠀⠀⠸⠀⠀⠀⠀⣿⡀⠀⡇⠀⠈⠄⠀⠀⠀⠀",
          "⢰⠠⣤⠄⠸⠀⠀⠀⣀⡜⡌⠀⠀⠀⢸⠉⣅⣤⣀⣒⠄⠀⠀⠀⠀⠀⠀⠠⢐⣠⣤⣤⣱⠒⡇⠀⠀⠀⢸⡡⠀⠃⠤⠤⢤⡄⠖⢒⠆",
          "⠀⠱⢄⠈⢅⠒⢐⠠⢄⠈⡇⠀⠀⠐⢻⠟⢋⠟⢋⠙⣗⡄⠀⠀⠀⠀⠀⢐⡟⢉⠙⢮⠙⢷⡟⠀⠀⠀⢸⢀⠄⠂⢠⠍⠀⢀⠄⠊⠀",
          "⠀⠀⢀⠕⠠⡀⠈⠂⠣⠀⠆⠀⠀⠀⠸⠂⢸⣀⠻⢇⢸⠀⠀⠀⠀⠀⠀⠸⣀⠿⢄⢸⠀⢁⠃⠀⠀⠠⢸⢨⠀⠀⠀⡠⠔⢡⠀⠀⠀",
          "⠀⢀⠌⠀⠀⠑⠠⡀⠀⠂⡆⡆⠀⠀⡀⡆⠈⢫⢀⠸⠊⠀⠀⠀⠀⠀⠀⠀⠫⢄⠨⠊⠀⡘⠀⠀⠀⢰⢸⠈⢀⡠⠐⠁⠀⠈⡆⠀⠀",
          "⢀⠎⢀⠎⠀⠀⡘⠘⠈⠐⢣⢰⡀⠀⠸⣜⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⢥⠆⠀⡠⢨⠎⠉⢡⠐⠀⠀⠀⠀⢰⠀⠀",
          "⡎⠰⢉⠀⠀⠀⣣⠂⠀⠀⠀⠻⠔⠄⡀⢯⡘⠂⠀⠀⠀⠀⠀⠰⣓⡄⠀⠀⠀⠀⠨⡰⢀⡞⠠⠊⠻⠊⠀⠀⠈⠰⠀⠀⠀⠆⢰⠀⠀",
          "⡇⡆⢈⠀⡇⠀⠃⠀⠀⠀⠀⠀⠀⠀⠈⠉⠑⠢⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠘⠁⠀⠀⠀⠀⠀⠀⠀⢰⣸⠀⠀⡘⢀⡌⠀⠀",
          "⠈⠣⠨⡐⠘⠆⡘⢄⡀⠀⠀⠀⠀⠀⢨⠑⡀⠀⠀⢀⣸⢲⡆⠠⠀⠤⢒⣾⣻⣄⠎⡇⢀⠞⠠⠀⠀⠀⠀⠀⢋⠆⢀⠔⠡⠋⠀⠀⠀",
          "⠀⠀⠀⠈⠁⠀⠈⠁⠀⠀⠀⠐⢏⠢⡠⢆⠱⡔⠒⠉⢾⢱⢫⢉⠉⠉⠛⠘⠁⣷⠀⢎⡍⢀⢦⠔⢋⠄⠀⠀⠉⠀⠁⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢄⡊⠢⡀⠙⠂⠐⣄⠀⠋⣾⢨⠿⠿⠀⢀⡠⡸⢞⠀⠈⠀⠚⢁⠄⠋⢤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢉⠢⢀⡈⠁⡠⠐⡐⠈⠐⠁⡩⠏⡚⠛⠙⣂⣏⠓⠚⠐⠄⠐⢀⠀⣀⡠⢝⡗⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⢠⠖⠋⠮⡥⣴⡀⠀⠐⠁⠀⡠⠃⠀⠀⠀⠀⠊⠀⠀⡁⠢⠀⠀⠁⠀⢀⡺⢩⡞⡂⢄⠓⢄⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⡴⠖⡡⡎⣸⠈⡌⠀⠀⡴⢊⠀⠀⠀⠀⠀⠀⠀⢀⠚⠀⠀⠀⠱⢣⠈⢡⠃⡈⡃⡄⠀⠐⠈⢄⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠰⠁⢀⠃⢇⢉⠆⠱⡀⡴⠁⡘⠀⠀⠀⠀⠀⠀⢀⠊⠀⠀⠀⠀⣆⡈⡢⠊⢠⡡⡱⠁⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⢰⠀⠈⠀⠈⢦⠉⡢⡈⠑⡺⠃⠀⠀⠀⠀⢀⠔⠁⠀⠀⠀⠀⠀⠈⠣⣅⠔⢔⠔⠁⠀⠀⠀⠀⠜⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠱⡀⠀⠀⠀⠉⢢⣼⠏⠀⠀⠀⠀⠀⡠⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠈⢗⠤⠀⣀⡀⡠⠊⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠂⠤⠄⠊⠒⠁⠧⠀⠀⠀⠀⠘⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠺⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        },
        highlight = "",
        default_color = "#00FFFF",
        oldfiles_amount = 0,
      },

      body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
          { " Find File", "Telescope find_files", "<leader><leader>" },
          { "󰍉 Find Word", "Telescope live_grep", "<leader>w" },
          { " Recent Files", "Telescope oldfiles", "<leader>r" },
          { " Close Neovim", ":q<CR>", "<leader>q" },
        },
        highlight = "",
        default_color = "#8edfff",
        oldfiles_amount = 0,
      },
      options = {
        mapping_keys = true,                 -- display mapping (e.g. <leader>ff)
        cursor_column = 0.5,
        empty_lines_between_mappings = true, -- add an empty line between mapping/commands
        disable_statuslines = true,         -- disable status-, buffer- and tablines
        paddings = { 1, 1, 2, 3 },
      },
      mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
      },
      colors = {
        background = "#FFFFFF00",
        --   folded_section = "#8edfff", -- the color of folded sections
      },
      parts = { "header", "body" },
    })
  end
}
