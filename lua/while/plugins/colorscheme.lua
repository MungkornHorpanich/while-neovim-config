return {
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "night", -- Options: "night", "storm", "day"
				transparent = false, -- Set to true for a transparent background
				terminal_colors = true,
				vim.cmd("colorscheme tokyonight"),
			})
		end,
	},
}
