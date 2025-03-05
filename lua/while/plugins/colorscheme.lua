function ColorMyPencils()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					sidebars = "transparent",
					floats = "transparent",
				},
			})
			vim.cmd.colorscheme("tokyonight")
		end,
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
	},

	{
		"phha/zenburn.nvim",
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				styles = {
					italic = false,
				},
			})
		end,
	},
	{
		"sainnhe/gruvbox-material",
		config = function()
			vim.g.gruvbox_material_contrast = "hard"
			vim.g.gruvbox_material_transparent_background = 2
			vim.g.gruvbox_material_better_performance = 1
		end,
	},

	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({
				transparent_mode = true,
				contrast = "hard",
			})
		end,
	},
	{
		"navarasu/onedark.nvim",
		config = function()
			require("onedark").setup({})
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({ options = {} })
		end,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
	},

	{
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		lazy = false,
		priority = 1000,
	},

	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			-- Default options:
			require("kanagawa").setup({
				transparent = true, -- do not set background color
				colors = {
					theme = { all = { ui = { bg_gutter = "none" } } },
				},
			})
		end,
	},
}
