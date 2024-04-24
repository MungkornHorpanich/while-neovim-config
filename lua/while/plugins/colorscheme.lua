return {
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    config = function()
      local nightfox = require('nightfox')
      nightfox.setup({
        options = {
          transparent = true
        }
      })

      vim.cmd.colorscheme("nightfox")
    end,
  },
}

