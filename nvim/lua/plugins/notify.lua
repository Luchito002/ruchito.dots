---@diagnostic disable: missing-fields
return {
  'rcarriga/nvim-notify',
  event = "VeryLazy",
  config = function()
    local notify = require "notify"

    -- transparency
    notify.setup { background_colour = "#000000" }

    -- overwrites the vim notify function
    vim.notify = notify.notify

    -- keymap to dismiss notifications
    vim.keymap.set("n", "<Esc>", function()
      notify.dismiss({ silent = true, pending = true })
    end, { desc = "Close notifications" })
  end
}

