return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-lua/popup.nvim" },
    { "nvim-telescope/telescope-fzy-native.nvim" },
    { "kyazdani42/nvim-web-devicons" },
    { "nvim-telescope/telescope-file-browser.nvim" },
    { "nvim-telescope/telescope-ui-select.nvim" },
	},
  event = "VeryLazy",
  keys = {
    { "<leader><leader>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>g", "<cmd>Telescope git_branches<cr>", desc = "Git Branches selector" },
    { "<leader>c", "<cmd>Telescope git_commits<cr>", desc = "Git commits" },
    { "<leader>b", "<cmd>Telescope buffers<cr>", desc = "Open Buffers" },
  }
}
