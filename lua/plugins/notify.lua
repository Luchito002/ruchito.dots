return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  config = function ()
    local notify = require 'notify'
    -- transparency
    notify.setup { background_colour = "#000000"}
    -- overwrite the vim notify function
    vim.notify = notify.notify
  end
}
