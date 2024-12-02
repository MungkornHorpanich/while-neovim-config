return {
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "storm", -- Options: "night", "storm", "day"
				transparent = false, -- Set to true for a transparent background
				terminal_colors = true,
			})
		end,
	},
}
