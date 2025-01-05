return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				theme = "base16",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_x = { "diagnostics", "filetype", "diff" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
