return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "moon", -- Options: "storm", "moon", "night", "day"
				transparent = true, -- Enable transparency
				terminal_colors = true, -- Apply theme to terminal colors
				styles = {
					sidebars = "transparent", -- Style for sidebars (e.g., NvimTree, Telescope)
					floats = "transparent", -- Style for floating windows
				},
				on_highlights = function(highlights, colors)
					highlights.NormalFloat = { bg = "none" }
					highlights.FloatBorder = { bg = "none" }
				end,
			})

			vim.cmd("colorscheme tokyonight-storm")
		end,
	},
}
